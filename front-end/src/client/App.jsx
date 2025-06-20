import HomePage from './pages/HomePage.jsx'
import Header from './layout/Header.jsx'
import Footer from './layout/Footer.jsx'
import ListProductComponent from './pages/ProductsPage.jsx'
import ProductComponent from './pages/ProductDetailPage.jsx'
import LoginComponent from './pages/LoginPage.jsx'
import RegisterComponent from './pages/RegisterPage.jsx'
import { BrowserRouter, Routes, Route } from 'react-router-dom'
import CartPage from './pages/CartPage.jsx'

import '../index.css'
import './assets/css/index.css'
import './assets/css/main.css'
import './assets/css/responsive.css'
import './assets/css/product-infor-style.css'
import './assets/css/quickviews-popup-cart.css'
import './assets/css/coupon.css'
import './assets/css/sidebar-style.css'
import './assets/css/product-style.css'
import './assets/css/cartpage.css'
import './assets/css/appcombo.css'
import './assets/css/collection-style.css'
import ProfileComponent from './components/ProfileComponent.jsx'
import OrderHistoryPage from './pages/OrderHistoryPage.jsx'
import IntroductionPage from './pages/IntroductionPage.jsx'
import ContactPage from './pages/ContactPage.jsx'
import StoreAddress from './pages/StoreAddress.jsx'
import ForgotPasswordPage from './pages/ForgotPasswordPage.jsx'
import ResetPasswordPage from './pages/ResetPasswordPage.jsx'
import SearchResults from './components/SearchResults.jsx'
import AboutUsPage from './pages/AboutUsPage.jsx'
import SalesPolicyPage from './pages/SalesPolicyPage.jsx'
import ReturnPolicyPage from './pages/ReturnPolicyPage.jsx'
import DeliveryPolicyPage from './pages/DeliveryPolicyPage.jsx'
import StoreSystemPage from './pages/StoreSystemPage.jsx'
import OrderByPhonePage from './pages/OrderByPhonePage.jsx'
function App() {
  return (
    <>
      <BrowserRouter>
        <Header />
        <Routes>
          <Route path="/" element={<HomePage />} />
          <Route path="/profile" element={<ProfileComponent />} />
          <Route path="/login" element={<LoginComponent />} />
          <Route path="/register" element={<RegisterComponent />} />
          <Route path='/forgot-password' element={<ForgotPasswordPage />} />
          <Route path='/reset-password' element={<ResetPasswordPage />} />
          <Route path="/products/:category?" element={<ListProductComponent />} />
          <Route path="/product/:id" element={<ProductComponent />} />
          <Route path="/search/:search" element={<SearchResults />} />
          <Route path="/cart" element={<CartPage />} />
          <Route path="/orders" element={<OrderHistoryPage />} />
          <Route path="/introduction" element={<IntroductionPage />} />
          <Route path="/contact" element={<ContactPage />} />
          <Route path="/store-address" element={<StoreAddress />} />
          <Route path="/gioi-thieu" element={<AboutUsPage />} />
          <Route path="/chinh-sach-ban-hang" element={<SalesPolicyPage />} />
          <Route path="/chinh-sach-doi-tra" element={<ReturnPolicyPage />} />
          <Route path="/chinh-sach-giao-hang" element={<DeliveryPolicyPage />} />
          <Route path="/he-thong-cua-hang" element={<StoreSystemPage />} />
          <Route path="/goi-dien-dat-hang" element={<OrderByPhonePage />} />
        </Routes>
        <Footer />
      </BrowserRouter>
    </>
  )
}

export default App
