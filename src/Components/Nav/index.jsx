/* eslint-disable jsx-a11y/anchor-is-valid */
function Nav() {
  return (
    <>
      {/* header-area-start */}
      <header>
        <div
          id="header-sticky"
          className="tptransparent__header header-five pl-185 pr-185"
        >
          <div className="container-fluid">
            <div className="tp-mega-menu-wrapper">
              <div className="row align-items-center">
                <div className="col-xl-2 col-lg-6 col-sm-4 col-6">
                  <div className="tplogo__area">
                    <a href="index.html">
                      <img src="assets/img/logo/logo-orange.svg" alt="" />
                    </a>
                  </div>
                </div>
                <div className="col-xl-7 col-lg-5  d-none d-xl-block">
                  <div className="tpmenu__area tpmenu-5 main-mega-menu">
                    <nav className="tp-main-menu-content">
                      <ul>
                        <li>
                          <a href="#about">A propos</a>
                        </li>
                        <li>
                          <a href="#services">Services</a>
                        </li>
                        <li>
                          <a href="#services">Projets</a>
                        </li>
                        <li>
                          <a href="contact.html">Contact</a>
                        </li>
                      </ul>
                    </nav>
                  </div>
                </div>
                <div className="col-xl-3 col-lg-6 col-sm-8 col-6">
                  <div className="tpheader__right  d-flex align-items-center justify-content-end">
                    <div className="header-bottom__lang d-none d-lg-block d-flex align-items-center justify-content-end">
                      <ul>
                        <li className="has-dropdown has-megamenu">
                          <a >
                            <span>
                              <svg
                                className="child-1"
                                width={16}
                                height={16}
                                viewBox="0 0 16 16"
                                fill="none"
                                xmlns="http://www.w3.org/2000/svg"
                              >
                                <path
                                  d="M8.00098 15C11.867 15 15.001 11.866 15.001 8C15.001 4.13401 11.867 1 8.00098 1C4.13498 1 1.00098 4.13401 1.00098 8C1.00098 11.866 4.13498 15 8.00098 15Z"
                                  stroke="#9A9B9C"
                                  strokeLinecap="round"
                                  strokeLinejoin="round"
                                />
                                <path
                                  d="M5.19973 1.7002H5.89973C4.53473 5.7882 4.53473 10.2122 5.89973 14.3002H5.19973"
                                  stroke="#9A9B9C"
                                  strokeLinecap="round"
                                  strokeLinejoin="round"
                                />
                                <path
                                  d="M10.1016 1.7002C11.4666 5.7882 11.4666 10.2122 10.1016 14.3002"
                                  stroke="#9A9B9C"
                                  strokeLinecap="round"
                                  strokeLinejoin="round"
                                />
                                <path
                                  d="M1.70117 10.8001V10.1001C5.78917 11.4651 10.2132 11.4651 14.3012 10.1001V10.8001"
                                  stroke="#9A9B9C"
                                  strokeLinecap="round"
                                  strokeLinejoin="round"
                                />
                                <path
                                  d="M1.70117 5.90021C5.78917 4.53521 10.2132 4.53521 14.3012 5.90021"
                                  stroke="#9A9B9C"
                                  strokeLinecap="round"
                                  strokeLinejoin="round"
                                />
                              </svg>
                              Français
                              <svg
                                className="child-2"
                                width={10}
                                height={6}
                                viewBox="0 0 10 6"
                                fill="none"
                                xmlns="http://www.w3.org/2000/svg"
                              >
                                <path
                                  d="M1 1L5 5L9 1"
                                  stroke="#55585B"
                                  strokeWidth="1.5"
                                  strokeLinecap="round"
                                  strokeLinejoin="round"
                                />
                              </svg>
                            </span>
                          </a>

                         
                        </li>
                      </ul>
                    </div>
                    <div className="d-flex align-items-center">
                      <div className="tpheader-btn-5 d-none d-md-block ml-25">
                        <a href="sign-in.html">Devis gratuit</a>
                      </div>
                      <div className="offcanvas-btn d-xl-none ml-20">
                        <button className="offcanvas-open-btn">
                          <i className="fa-solid fa-bars" />
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </header>
      {/* header-area-end */}

      {/* offcanvas area start */}
   {/*    <div className="offcanvas__area">
        <div className="offcanvas__wrapper">
          <div className="offcanvas__close">
            <button className="offcanvas__close-btn offcanvas-close-btn">
              <svg
                width={12}
                height={12}
                viewBox="0 0 12 12"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path
                  d="M11 1L1 11"
                  stroke="currentColor"
                  strokeWidth="1.5"
                  strokeLinecap="round"
                  strokeLinejoin="round"
                />
                <path
                  d="M1 1L11 11"
                  stroke="currentColor"
                  strokeWidth="1.5"
                  strokeLinecap="round"
                  strokeLinejoin="round"
                />
              </svg>
            </button>
          </div>
          <div className="offcanvas__content">
            <div className="offcanvas__top mb-50 d-flex justify-content-between align-items-center">
              <div className="offcanvas__logo logo">
                <a href="home-main.html">
                  <img src="assets/img/logo/logo.svg" alt="logo" />
                </a>
              </div>
            </div>
            <div className="tp-main-menu-mobile mb-35" />
            <div className="offcanvas__btn">
              <a href="contact.html" className="tp-btn w-100">
                Getting Started
              </a>
            </div>
            <div className="offcanvas__contact mb-40">
              <p className="offcanvas__contact-call">
                <a href="tel:+964-742-44-763">+964 742 44 763</a>
              </p>
              <p className="offcanvas__contact-mail">
                <a href="mailto:info@harry.com">info@seomy.com</a>
              </p>
            </div>
            <div className="offcanvas__social">
              <a href="#">
                <i className="fab fa-facebook-f" />
              </a>
              <a href="#">
                <i className="fab fa-twitter" />
              </a>
              <a href="#">
                <i className="fab fa-youtube" />
              </a>
              <a href="#">
                <i className="fab fa-linkedin" />
              </a>
              <a href="#">
                <i className="fab fa-instagram" />
              </a>
            </div>
          </div>
        </div>
      </div> */}

      <div className="body-overlay" />
      {/* offcanvas area end */}
    </>
  );
}

export default Nav;
