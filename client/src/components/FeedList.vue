<template>
  <div>
  <div v-if="userId" class="container">
    <h1>Feed</h1>
    <create-twitt></create-twitt>
    <h4 v-if="loading">Loading...</h4>
    <span v-if="!feed">Woa, such emply</span>
    <twitt-item
      v-for="twitt in feed"
      :key="twitt.id"
      :twitt="twitt">
    </twitt-item>
  </div>
  <div v-else class="container">
    <p >Welcome to this twitter like app. Please login or creat and account</p>
  </div>
    </div>
</template>

<script>
import { FEED_QUERY } from '../constants/graphql'
import {T_USER_ID} from '../constants/settings'
import TwittItem from './TwittItem'
import CreateTwitt from './CreateTwitt'

export default {
  name: 'FeedList',

  data () {
    return {
      feed: null,
      loading: 0
    }
  },
  computed: {
    userId () {
      return this.$root.$data.userId
    }
  },
  components: {
    TwittItem,
    CreateTwitt
  },
  apollo: {
    feed: {
      query: FEED_QUERY,
      variables () {
        return {
          user_id: localStorage.getItem(T_USER_ID)
        }
      }
    }
  }
}
</script>
