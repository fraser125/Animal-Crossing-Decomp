lbl_80546BB8:
/* 80546BB8  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 80546BBC  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 80546BC0  2C 00 00 02 */	cmpwi r0, 2
/* 80546BC4  38 60 00 00 */	li r3, 0
/* 80546BC8  41 82 00 24 */	beq lbl_80546BEC
/* 80546BCC  40 80 00 10 */	bge lbl_80546BDC
/* 80546BD0  2C 00 00 01 */	cmpwi r0, 1
/* 80546BD4  40 80 00 10 */	bge lbl_80546BE4
/* 80546BD8  4E 80 00 20 */	blr 
lbl_80546BDC:
/* 80546BDC  2C 00 00 04 */	cmpwi r0, 4
/* 80546BE0  4C 80 00 20 */	bgelr 
lbl_80546BE4:
/* 80546BE4  38 60 00 01 */	li r3, 1
/* 80546BE8  4E 80 00 20 */	blr 
lbl_80546BEC:
/* 80546BEC  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 80546BF0  2C 00 00 04 */	cmpwi r0, 4
/* 80546BF4  41 82 00 24 */	beq lbl_80546C18
/* 80546BF8  40 80 00 10 */	bge lbl_80546C08
/* 80546BFC  2C 00 00 02 */	cmpwi r0, 2
/* 80546C00  41 82 00 20 */	beq lbl_80546C20
/* 80546C04  4E 80 00 20 */	blr 
lbl_80546C08:
/* 80546C08  2C 00 00 08 */	cmpwi r0, 8
/* 80546C0C  4C 80 00 20 */	bgelr 
/* 80546C10  2C 00 00 06 */	cmpwi r0, 6
/* 80546C14  4D 80 00 20 */	bltlr 
lbl_80546C18:
/* 80546C18  38 60 00 01 */	li r3, 1
/* 80546C1C  4E 80 00 20 */	blr 
lbl_80546C20:
/* 80546C20  28 04 22 04 */	cmplwi r4, 0x2204
/* 80546C24  4D 80 00 20 */	bltlr 
/* 80546C28  28 04 22 2B */	cmplwi r4, 0x222b
/* 80546C2C  4D 81 00 20 */	bgtlr 
/* 80546C30  38 60 00 01 */	li r3, 1
/* 80546C34  4E 80 00 20 */	blr 
