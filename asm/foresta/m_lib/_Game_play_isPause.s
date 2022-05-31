lbl_803BB558:
/* 803BB558  80 63 1D A0 */	lwz r3, 0x1da0(r3)
/* 803BB55C  30 03 FF FF */	addic r0, r3, -1
/* 803BB560  7C 60 19 10 */	subfe r3, r0, r3
/* 803BB564  4E 80 00 20 */	blr 
