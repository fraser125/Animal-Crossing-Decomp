lbl_803B3C4C:
/* 803B3C4C  48 00 00 1C */	b lbl_803B3C68
lbl_803B3C50:
/* 803B3C50  A0 04 00 00 */	lhz r0, 0(r4)
/* 803B3C54  38 84 00 02 */	addi r4, r4, 2
/* 803B3C58  38 A5 FF FF */	addi r5, r5, -1
/* 803B3C5C  54 00 F4 BE */	rlwinm r0, r0, 0x1e, 0x12, 0x1f
/* 803B3C60  B0 03 00 00 */	sth r0, 0(r3)
/* 803B3C64  38 63 00 02 */	addi r3, r3, 2
lbl_803B3C68:
/* 803B3C68  2C 05 00 00 */	cmpwi r5, 0
/* 803B3C6C  4D 82 00 20 */	beqlr 
/* 803B3C70  28 03 00 00 */	cmplwi r3, 0
/* 803B3C74  4D 82 00 20 */	beqlr 
/* 803B3C78  28 04 00 00 */	cmplwi r4, 0
/* 803B3C7C  40 82 FF D4 */	bne lbl_803B3C50
/* 803B3C80  4E 80 00 20 */	blr 
