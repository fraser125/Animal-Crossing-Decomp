lbl_8052F88C:
/* 8052F88C  80 A3 01 7C */	lwz r5, 0x17c(r3)
/* 8052F890  28 05 00 00 */	cmplwi r5, 0
/* 8052F894  4D 82 00 20 */	beqlr 
/* 8052F898  80 03 08 40 */	lwz r0, 0x840(r3)
/* 8052F89C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8052F8A0  40 82 00 18 */	bne lbl_8052F8B8
/* 8052F8A4  80 83 08 38 */	lwz r4, 0x838(r3)
/* 8052F8A8  2C 04 00 00 */	cmpwi r4, 0
/* 8052F8AC  40 81 00 0C */	ble lbl_8052F8B8
/* 8052F8B0  38 04 FF FF */	addi r0, r4, -1
/* 8052F8B4  90 03 08 38 */	stw r0, 0x838(r3)
lbl_8052F8B8:
/* 8052F8B8  80 03 08 38 */	lwz r0, 0x838(r3)
/* 8052F8BC  2C 00 00 00 */	cmpwi r0, 0
/* 8052F8C0  4C 82 00 20 */	bnelr 
/* 8052F8C4  38 00 00 00 */	li r0, 0
/* 8052F8C8  98 05 08 E2 */	stb r0, 0x8e2(r5)
/* 8052F8CC  4E 80 00 20 */	blr 
