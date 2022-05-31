lbl_80545B94:
/* 80545B94  80 83 09 C0 */	lwz r4, 0x9c0(r3)
/* 80545B98  2C 04 FF FF */	cmpwi r4, -1
/* 80545B9C  41 81 00 0C */	bgt lbl_80545BA8
/* 80545BA0  38 80 00 B4 */	li r4, 0xb4
/* 80545BA4  48 00 00 10 */	b lbl_80545BB4
lbl_80545BA8:
/* 80545BA8  2C 04 00 00 */	cmpwi r4, 0
/* 80545BAC  41 82 00 08 */	beq lbl_80545BB4
/* 80545BB0  38 84 FF FF */	addi r4, r4, -1
lbl_80545BB4:
/* 80545BB4  90 83 09 C0 */	stw r4, 0x9c0(r3)
/* 80545BB8  4E 80 00 20 */	blr 
