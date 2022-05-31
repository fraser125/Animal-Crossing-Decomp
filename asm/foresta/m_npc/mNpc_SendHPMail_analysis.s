lbl_803D6E18:
/* 803D6E18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D6E1C  7C 08 02 A6 */	mflr r0
/* 803D6E20  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D6E24  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803D6E28  7C 9F 23 78 */	mr r31, r4
/* 803D6E2C  38 81 00 08 */	addi r4, r1, 8
/* 803D6E30  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803D6E34  7C 7E 1B 78 */	mr r30, r3
/* 803D6E38  38 65 00 08 */	addi r3, r5, 8
/* 803D6E3C  4B FE 73 59 */	bl mMpswd_password
/* 803D6E40  88 01 00 0C */	lbz r0, 0xc(r1)
/* 803D6E44  28 00 00 06 */	cmplwi r0, 6
/* 803D6E48  40 80 00 2C */	bge lbl_803D6E74
/* 803D6E4C  3C 60 80 66 */	lis r3, send_proc@ha /* 0x8065B428@ha */
/* 803D6E50  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 803D6E54  38 83 B4 28 */	addi r4, r3, send_proc@l /* 0x8065B428@l */
/* 803D6E58  7F C3 F3 78 */	mr r3, r30
/* 803D6E5C  7D 84 00 2E */	lwzx r12, r4, r0
/* 803D6E60  7F E4 FB 78 */	mr r4, r31
/* 803D6E64  38 A1 00 08 */	addi r5, r1, 8
/* 803D6E68  7D 89 03 A6 */	mtctr r12
/* 803D6E6C  4E 80 04 21 */	bctrl 
/* 803D6E70  48 00 00 10 */	b lbl_803D6E80
lbl_803D6E74:
/* 803D6E74  7F C3 F3 78 */	mr r3, r30
/* 803D6E78  7F E4 FB 78 */	mr r4, r31
/* 803D6E7C  4B FF FB 35 */	bl mNpc_SendHPMailNum_NG
lbl_803D6E80:
/* 803D6E80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D6E84  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803D6E88  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803D6E8C  7C 08 03 A6 */	mtlr r0
/* 803D6E90  38 21 00 30 */	addi r1, r1, 0x30
/* 803D6E94  4E 80 00 20 */	blr 
