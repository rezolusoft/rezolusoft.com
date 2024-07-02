export default function Footer() {
  return (
    <>
      {/* footer-area-start */}
      <footer>
        <div className="footer-area pt-100">
          <div className="container">
            <div className="footer-top">
              <div className="row">
                <div className="col-lg-3 col-md-6">
                  <div className="footer-widget footer-col-1 mb-40">
                    <div className="footer-widget-logo mb-20">
                      <a href="index.html">
                        <span>
                          <img src="assets/img/logo/logo-orange.svg" alt="" />
                        </span>
                      </a>
                    </div>
                    <div className="footer-widget-content">
                      <p className="footer-widget-text mb-20">
                       Des solutions numériques pour régler les problèmes du quotidien.
                      </p>
                      <div className="footer-widget-social">
                        <span>Suivez-nous sur :</span>
                        <a href="https://web.facebook.com/profile.php?id=61561705828400" target="blank">
                          <i className="fa-brands fa-facebook-f" />
                        </a>
                        <a href="#">
                          <i className="fa-brands fa-twitter" />
                        </a>
                       
                        <a href="https://github.com/rezolusoft">
                          <i className="fa-brands fa-github" />
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div className="col-lg-3 col-md-6">
                  <div className="footer-widget footer-col-2 mb-40">
                    <h4 className="footer-widget-title mb-15">Information</h4>
                    <div className="footer-widget-link">
                      <ul>
                        <li>
                          <a href="#banner">Accueil</a>
                        </li>
                        <li>
                          <a href="#about">A propos</a>
                        </li>
                        <li>
                          <a href="#services">Services</a>
                        </li>
                        
                        <li>
                          <a href="/blog">Blog</a>
                        </li>
                        <li>
                          <a href="/career">Carrières</a>
                        </li>
                        <li>
                          <a href="#contact">Contact</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div className="col-lg-3 col-md-6">
                  <div className="footer-widget footer-col-3 mb-40">
                    <h4 className="footer-widget-title mb-15">Services</h4>
                    <div className="footer-widget-link">
                      <ul>
                        <li>
                          <a href="seo-audit.html">Développement Web</a>
                        </li>
                        <li>
                          <a href="service/1">
                          Développement d'applications
                          </a>
                        </li>
                        <li>
                          <a href="/service/2">Design et UX</a>
                        </li>
                        <li>
                          <a href="/service/3">Création de contenu</a>
                        </li>
                        <li>
                          <a href="keyword-search.html">Maintenance et Support</a>
                        </li>
                        <li>
                          <a href="social-media-markiting.html">Consulting et Stratégie</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div className="col-lg-3 col-md-6">
                  <div className="footer-widget footer-col-4 mb-40">
                    <h4 className="footer-widget-title mb-20">S'abonner.</h4>
                    <div className="footer-widget-newsletter">
                      <p>C'est le début d'une grande aventure</p>
                      <form action="#">
                        <div className="footer-widget-newsletter-input mb-15">
                          <input type="email" placeholder="Votre Mail" />
                          <span>
                            <svg
                              width={18}
                              height={16}
                              viewBox="0 0 18 16"
                              fill="none"
                              xmlns="http://www.w3.org/2000/svg"
                            >
                              <path
                                d="M13 14.6H5C2.6 14.6 1 13.4 1 10.6V5C1 2.2 2.6 1 5 1H13C15.4 1 17 2.2 17 5V10.6C17 13.4 15.4 14.6 13 14.6Z"
                                stroke="#565764"
                                strokeWidth="1.5"
                                strokeMiterlimit={10}
                                strokeLinecap="round"
                                strokeLinejoin="round"
                              />
                              <path
                                d="M13 5.39844L10.496 7.39844C9.672 8.05444 8.32 8.05444 7.496 7.39844L5 5.39844"
                                stroke="#565764"
                                strokeWidth="1.5"
                                strokeMiterlimit={10}
                                strokeLinecap="round"
                                strokeLinejoin="round"
                              />
                            </svg>
                          </span>
                        </div>
                        <button className="footer-widget-newsletter-btn">
                          S'abonner.
                        </button>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div className="footer-bottom">
              <div className="row">
                <div className="col-lg-12">
                  <div className="footer-widget-copyright text-center">
                    <span>
                      © 2024 Copyrights Rezolusoft. All Rights Reserved.
                    
                
                    </span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </footer>
      {/* footer-area-end */}
    </>
  );
}
