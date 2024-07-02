import Nav from "./Components/Nav";
import Footer from "./Components/Footer";
export default function Layout(props) {
 return(
    <>
    {/* pre loader area start */}
    <div id="loading">
      <div id="loading-center">
        <div id="loading-center-absolute">
          {/* loading content here */}
          <div className="tp-preloader-content">
            <div className="tp-preloader-logo">
              <div className="tp-preloader-circle">
                <svg
                  width={190}
                  height={190}
                  viewBox="0 0 380 380"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <circle
                    stroke="#D9D9D9"
                    cx={190}
                    cy={190}
                    r={180}
                    strokeWidth={6}
                    strokeLinecap="round"
                  />
                  <circle
                    stroke="red"
                    cx={190}
                    cy={190}
                    r={180}
                    strokeWidth={6}
                    strokeLinecap="round"
                  />
                </svg>
              </div>
              <img src="assets/img/logo/preloader/preloader-icon.png" alt="" />
            </div>
            <p className="tp-preloader-subtitle">Chargement...</p>
          </div>
        </div>
      </div>
    </div>
    {/* pre loader area end */}

    {/* back to top start */}
    <div className="back-to-top-wrapper">
      <button id="back_to_top" type="button" className="back-to-top-btn">
        <svg
          width={12}
          height={7}
          viewBox="0 0 12 7"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M11 6L6 1L1 6"
            stroke="currentColor"
            strokeWidth="1.5"
            strokeLinecap="round"
            strokeLinejoin="round"
          />
        </svg>
      </button>
    </div>
    {/* back to top end */}
    <Nav />

    <main>
        {props.children}
    </main>

   

    <Footer />



  </>
 )
}
