import axios from "axios";

const Api = axios.create({
  //url da api
  baseURL: 'localhos:3000/api',
});

export default Api;