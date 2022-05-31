lbl_8052F934:
/* 8052F934  A0 83 07 FA */	lhz r4, 0x7fa(r3)
/* 8052F938  28 04 00 00 */	cmplwi r4, 0
/* 8052F93C  4D 82 00 20 */	beqlr 
/* 8052F940  38 04 FF FF */	addi r0, r4, -1
/* 8052F944  B0 03 07 FA */	sth r0, 0x7fa(r3)
/* 8052F948  4E 80 00 20 */	blr 
