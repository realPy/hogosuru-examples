package components

var loaderhtml string = ` <div class="load">
<div class="item" ><div id="loadtext">hogosuru loading</div><progress max="100" value="3" id="loadprogress"></progress><div class="lds-ellipsis"><div></div><div></div><div></div><div></div></div></div>
</div>`

var loadercss string = `   .loader {
    background-color: rgba(54,70,91,.5);
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 10;

    
    }
    .lds-ellipsis {
    display: block;
    position: relative;
    width: 80px;
    height: 80px;
    margin: auto;
   
  }
  .lds-ellipsis div {
    position: absolute;
    top: 3px;
    width: 13px;
    height: 13px;
    border-radius: 50%;
    background: #fff;
    animation-timing-function: cubic-bezier(0, 1, 1, 0);
  }
  .lds-ellipsis div:nth-child(1) {
    left: 8px;
    animation: lds-ellipsis1 0.6s infinite;
  }
  .lds-ellipsis div:nth-child(2) {
    left: 8px;
    animation: lds-ellipsis2 0.6s infinite;
  }
  .lds-ellipsis div:nth-child(3) {
    left: 32px;
    animation: lds-ellipsis2 0.6s infinite;
  }
  .lds-ellipsis div:nth-child(4) {
    left: 56px;
    animation: lds-ellipsis3 0.6s infinite;
  }
  @keyframes lds-ellipsis1 {
    0% {
      transform: scale(0);
    }
    100% {
      transform: scale(1);
    }
  }
  @keyframes lds-ellipsis3 {
    0% {
      transform: scale(1);
    }
    100% {
      transform: scale(0);
    }
  }
  @keyframes lds-ellipsis2 {
    0% {
      transform: translate(0, 0);
    }
    100% {
      transform: translate(24px, 0);
    }
  } 
    .load {
    height: 200px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 50vh; /* poussé de la moitié de hauteur de viewport */
    transform: translateY(-50%); /* tiré de la moitié de sa propre hauteur */

    }
    .item {
  
        width: 10em;
        color:white;
        text-align: center;

    }`
