import{d,i as _,a as p,u as h,b as u,c as m,e as f,f as n,g as t,t as s,h as a,F as v,r as g,n as x,j as y,o as i,k as b,l as N,m as k,p as P,q as j,_ as w}from"./index-aa1c9f50.js";import{N as S}from"./NoteDisplay-d30ece1d.js";const V={class:"m-4"},D={class:"mb-10"},L={class:"text-4xl font-bold mt-2"},T={class:"opacity-50"},B={class:"text-lg"},C={class:"font-bold flex gap-2"},H={class:"opacity-50"},z=t("div",{class:"flex-auto"},null,-1),F={key:0,class:"border-gray-400/50 mb-8"},M=d({__name:"PresenterPrint",setup(q){_(p),h(`
@page {
  size: A4;
  margin-top: 1.5cm;
  margin-bottom: 1cm;
}
* {
  -webkit-print-color-adjust: exact;
}
html,
html body,
html #app,
html #page-root {
  height: auto;
  overflow: auto !important;
}
`),u({title:`Notes - ${m.title}`});const r=f(()=>y.slice(0,-1).map(o=>{var l;return(l=o.meta)==null?void 0:l.slide}).filter(o=>o!==void 0&&o.noteHTML!==""));return(o,l)=>(i(),n("div",{id:"page-root",style:x(a(j))},[t("div",V,[t("div",D,[t("h1",L,s(a(m).title),1),t("div",T,s(new Date().toLocaleString()),1)]),(i(!0),n(v,null,g(a(r),(e,c)=>(i(),n("div",{key:c,class:"flex flex-col gap-4 break-inside-avoid-page"},[t("div",null,[t("h2",B,[t("div",C,[t("div",H,s(e==null?void 0:e.no)+"/"+s(a(b)),1),N(" "+s(e==null?void 0:e.title)+" ",1),z])]),k(S,{"note-html":e.noteHTML,class:"max-w-full"},null,8,["note-html"])]),c<a(r).length-1?(i(),n("hr",F)):P("v-if",!0)]))),128))])],4))}}),R=w(M,[["__file","/home/nico/Projects/Devoxx/nix-dev-env/node_modules/@slidev/client/internals/PresenterPrint.vue"]]);export{R as default};
