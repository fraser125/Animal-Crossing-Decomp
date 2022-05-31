lbl_803CB36C:
/* 803CB36C  88 83 00 00 */	lbz r4, 0(r3)
/* 803CB370  28 04 00 05 */	cmplwi r4, 5
/* 803CB374  4C 81 00 20 */	blelr 
/* 803CB378  38 04 FF FF */	addi r0, r4, -1
/* 803CB37C  98 03 00 00 */	stb r0, 0(r3)
/* 803CB380  4E 80 00 20 */	blr 
