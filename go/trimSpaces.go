package main

import (
  "unicode"
	"unicode/utf8"
)


func trimLeftSpaces(s []byte) []byte {
	i := -1
	for j, r := range string(s) {
		if !unicode.IsSpace(r) || r == nbsp {
			i = j
			break
		}
	}

	if i == -1 {
		return []byte("")
	}
	return []byte(s[i:])
}

func trimRightSpaces(s []byte) []byte {
	i := -1
	for j := len(s) - 1; j >= 0; j-- {
		r, _ := utf8.DecodeRune(s[j:])
		if !unicode.IsSpace(r) || r == nbsp {
			i = j
			break
		}
	}

	if i == -1 {
		return []byte("")
	}
	return s[:i+1]
}

