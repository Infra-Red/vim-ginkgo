{{/*
  This template is used by gensyntax.go to generate a vim syntax supporting
  Ginkgo and related assertion/matcher packages.
*/}}

if exists('b:current_syntax')
  finish
endif

runtime! syntax/go.vim
unlet! b:current_syntax

" Ginkgo keywords

syntax keyword ginkgoCallbacks AfterEach AfterSuite BeforeEach BeforeSuite JustBeforeEach SynchronizedAfterSuite SynchronizedBeforeSuite
highlight link ginkgoCallbacks Identifier

syntax keyword ginkgoGroups By Context Describe It Specify
highlight link ginkgoGroups Statement

syntax keyword ginkgoFocusedGroups FContext FDescribe FIt FMeasure FSpecify
highlight link ginkgoFocusedGroups Underlined

syntax keyword ginkgoPendingGroups PContext PDescribe PIt PMeasure PSpecify
highlight link ginkgoPendingGroups Todo

syntax keyword ginkgoDisabledGroups XContext XDescribe XIt XMeasure XSpecify
highlight link ginkgoDisabledGroups Comment

" Gomega assertions
syntax keyword gomegaAssertions {{range $i, $word := .Assertions}}{{if $i}} {{end}}{{$word}}{{end}}
highlight link gomegaAssertions Constant

" Gomega matchers
syntax keyword gomegaMatchers {{range $i, $word := .Matchers}}{{if $i}} {{end}}{{$word}}{{end}}
highlight link gomegaMatchers Constant

let b:current_syntax = 'ginkgo'

" vi: set ft=vim :
