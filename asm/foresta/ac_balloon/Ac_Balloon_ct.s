lbl_804142A0:
/* 804142A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804142A4  7C 08 02 A6 */	mflr r0
/* 804142A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804142AC  4B FF FA 45 */	bl Ac_Balloon_request_hide
/* 804142B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804142B4  7C 08 03 A6 */	mtlr r0
/* 804142B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804142BC  4E 80 00 20 */	blr 
