lbl_8037CA48:
/* 8037CA48  80 03 00 08 */	lwz r0, 8(r3)
/* 8037CA4C  2C 00 00 01 */	cmpwi r0, 1
/* 8037CA50  40 82 00 10 */	bne lbl_8037CA60
/* 8037CA54  38 00 00 02 */	li r0, 2
/* 8037CA58  90 03 00 08 */	stw r0, 8(r3)
/* 8037CA5C  4E 80 00 20 */	blr 
lbl_8037CA60:
/* 8037CA60  2C 00 00 03 */	cmpwi r0, 3
/* 8037CA64  4C 82 00 20 */	bnelr 
/* 8037CA68  38 00 00 00 */	li r0, 0
/* 8037CA6C  90 03 00 08 */	stw r0, 8(r3)
/* 8037CA70  4E 80 00 20 */	blr 
