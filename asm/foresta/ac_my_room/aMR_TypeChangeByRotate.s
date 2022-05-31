lbl_8047FF20:
/* 8047FF20  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8047FF24  2C 00 00 08 */	cmpwi r0, 8
/* 8047FF28  40 82 00 1C */	bne lbl_8047FF44
/* 8047FF2C  3C 80 80 69 */	lis r4, lt_place_tbl@ha /* 0x8068A120@ha */
/* 8047FF30  88 03 00 3E */	lbz r0, 0x3e(r3)
/* 8047FF34  38 84 A1 20 */	addi r4, r4, lt_place_tbl@l /* 0x8068A120@l */
/* 8047FF38  7C 04 00 AE */	lbzx r0, r4, r0
/* 8047FF3C  98 03 00 3E */	stb r0, 0x3e(r3)
/* 8047FF40  4E 80 00 20 */	blr 
lbl_8047FF44:
/* 8047FF44  3C 80 80 69 */	lis r4, rt_place_tbl@ha /* 0x8068A11C@ha */
/* 8047FF48  88 03 00 3E */	lbz r0, 0x3e(r3)
/* 8047FF4C  38 84 A1 1C */	addi r4, r4, rt_place_tbl@l /* 0x8068A11C@l */
/* 8047FF50  7C 04 00 AE */	lbzx r0, r4, r0
/* 8047FF54  98 03 00 3E */	stb r0, 0x3e(r3)
/* 8047FF58  4E 80 00 20 */	blr 
