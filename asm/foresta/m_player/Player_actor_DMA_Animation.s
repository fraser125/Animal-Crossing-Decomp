lbl_804D64E4:
/* 804D64E4  2C 05 00 00 */	cmpwi r5, 0
/* 804D64E8  41 80 00 14 */	blt lbl_804D64FC
/* 804D64EC  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 804D64F0  7C 05 00 00 */	cmpw r5, r0
/* 804D64F4  41 82 00 08 */	beq lbl_804D64FC
/* 804D64F8  90 A3 0D B4 */	stw r5, 0xdb4(r3)
lbl_804D64FC:
/* 804D64FC  2C 06 00 00 */	cmpwi r6, 0
/* 804D6500  4D 80 00 20 */	bltlr 
/* 804D6504  80 03 0D B8 */	lwz r0, 0xdb8(r3)
/* 804D6508  7C 06 00 00 */	cmpw r6, r0
/* 804D650C  4D 82 00 20 */	beqlr 
/* 804D6510  90 C3 0D B8 */	stw r6, 0xdb8(r3)
/* 804D6514  4E 80 00 20 */	blr 
