lbl_8058CC38:
/* 8058CC38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058CC3C  7C 08 02 A6 */	mflr r0
/* 8058CC40  3C A0 80 65 */	lis r5, lit_634@ha /* 0x80649BBC@ha */
/* 8058CC44  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058CC48  C0 25 9B BC */	lfs f1, lit_634@l(r5)  /* 0x80649BBC@l */
/* 8058CC4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8058CC50  7C 9F 23 78 */	mr r31, r4
/* 8058CC54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8058CC58  7C 7E 1B 78 */	mr r30, r3
/* 8058CC5C  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8058CC60  4B DE 38 29 */	bl cKF_FrameControl_passCheck_now
/* 8058CC64  2C 03 00 00 */	cmpwi r3, 0
/* 8058CC68  41 82 00 60 */	beq lbl_8058CCC8
/* 8058CC6C  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 8058CC70  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058CC74  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8058CC78  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8058CC7C  3C 63 00 02 */	addis r3, r3, 2
/* 8058CC80  7F E7 FB 78 */	mr r7, r31
/* 8058CC84  90 81 00 08 */	stw r4, 8(r1)
/* 8058CC88  38 81 00 08 */	addi r4, r1, 8
/* 8058CC8C  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 8058CC90  38 60 00 35 */	li r3, 0x35
/* 8058CC94  90 01 00 0C */	stw r0, 0xc(r1)
/* 8058CC98  38 A0 00 01 */	li r5, 1
/* 8058CC9C  39 40 00 01 */	li r10, 1
/* 8058CCA0  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8058CCA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8058CCA8  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 8058CCAC  81 86 00 00 */	lwz r12, 0(r6)
/* 8058CCB0  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 8058CCB4  A8 DE 00 36 */	lha r6, 0x36(r30)
/* 8058CCB8  7C 09 07 34 */	extsh r9, r0
/* 8058CCBC  A1 1E 00 06 */	lhz r8, 6(r30)
/* 8058CCC0  7D 89 03 A6 */	mtctr r12
/* 8058CCC4  4E 80 04 21 */	bctrl 
lbl_8058CCC8:
/* 8058CCC8  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8058CCCC  4B DE 38 55 */	bl cKF_FrameControl_stop_proc
/* 8058CCD0  2C 03 00 01 */	cmpwi r3, 1
/* 8058CCD4  40 82 00 28 */	bne lbl_8058CCFC
/* 8058CCD8  3C 60 80 65 */	lis r3, data_80649BAC@ha /* 0x80649BAC@ha */
/* 8058CCDC  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 8058CCE0  C0 23 9B AC */	lfs f1, data_80649BAC@l(r3)  /* 0x80649BAC@l */
/* 8058CCE4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8058CCE8  40 82 00 14 */	bne lbl_8058CCFC
/* 8058CCEC  7F C3 F3 78 */	mr r3, r30
/* 8058CCF0  7F E4 FB 78 */	mr r4, r31
/* 8058CCF4  38 A0 00 0D */	li r5, 0xd
/* 8058CCF8  48 00 08 25 */	bl aTKN1_setup_think_proc
lbl_8058CCFC:
/* 8058CCFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058CD00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8058CD04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8058CD08  7C 08 03 A6 */	mtlr r0
/* 8058CD0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8058CD10  4E 80 00 20 */	blr 
