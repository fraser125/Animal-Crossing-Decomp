lbl_805B5964:
/* 805B5964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B5968  7C 08 02 A6 */	mflr r0
/* 805B596C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B5970  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B5974  7C 7F 1B 78 */	mr r31, r3
/* 805B5978  38 7F 01 78 */	addi r3, r31, 0x178
/* 805B597C  93 C1 00 08 */	stw r30, 8(r1)
/* 805B5980  7C 9E 23 78 */	mr r30, r4
/* 805B5984  4B DB B6 91 */	bl cKF_SkeletonInfo_R_play
/* 805B5988  2C 03 00 01 */	cmpwi r3, 1
/* 805B598C  41 82 00 20 */	beq lbl_805B59AC
/* 805B5990  80 1F 02 B8 */	lwz r0, 0x2b8(r31)
/* 805B5994  3C 60 81 20 */	lis r3, aMHS_door_closed_flag@ha /* 0x811FA1E8@ha */
/* 805B5998  38 63 A1 E8 */	addi r3, r3, aMHS_door_closed_flag@l /* 0x811FA1E8@l */
/* 805B599C  38 80 00 00 */	li r4, 0
/* 805B59A0  54 00 10 3A */	slwi r0, r0, 2
/* 805B59A4  7C 83 01 2E */	stwx r4, r3, r0
/* 805B59A8  48 00 00 C4 */	b lbl_805B5A6C
lbl_805B59AC:
/* 805B59AC  3C 60 80 65 */	lis r3, lit_601@ha /* 0x8064A980@ha */
/* 805B59B0  C0 3F 02 D0 */	lfs f1, 0x2d0(r31)
/* 805B59B4  C0 03 A9 80 */	lfs f0, lit_601@l(r3)  /* 0x8064A980@l */
/* 805B59B8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805B59BC  40 82 00 20 */	bne lbl_805B59DC
/* 805B59C0  A8 1F 00 38 */	lha r0, 0x38(r31)
/* 805B59C4  2C 00 00 00 */	cmpwi r0, 0
/* 805B59C8  40 82 00 0C */	bne lbl_805B59D4
/* 805B59CC  38 00 00 01 */	li r0, 1
/* 805B59D0  B0 1F 00 38 */	sth r0, 0x38(r31)
lbl_805B59D4:
/* 805B59D4  38 80 00 03 */	li r4, 3
/* 805B59D8  48 00 00 78 */	b lbl_805B5A50
lbl_805B59DC:
/* 805B59DC  3C 60 80 65 */	lis r3, lit_457@ha /* 0x8064A970@ha */
/* 805B59E0  C0 03 A9 70 */	lfs f0, lit_457@l(r3)  /* 0x8064A970@l */
/* 805B59E4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805B59E8  40 82 00 64 */	bne lbl_805B5A4C
/* 805B59EC  7F C3 F3 78 */	mr r3, r30
/* 805B59F0  7F E4 FB 78 */	mr r4, r31
/* 805B59F4  4B FF F6 DD */	bl aMHS_rewrite_pl_out_data
/* 805B59F8  7F C3 F3 78 */	mr r3, r30
/* 805B59FC  7F E4 FB 78 */	mr r4, r31
/* 805B5A00  4B FF F5 81 */	bl aMHS_goto_next_pl_scene
/* 805B5A04  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B5A08  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B5A0C  3C 63 00 02 */	addis r3, r3, 2
/* 805B5A10  80 63 60 AC */	lwz r3, 0x60ac(r3)
/* 805B5A14  28 03 00 00 */	cmplwi r3, 0
/* 805B5A18  41 82 00 24 */	beq lbl_805B5A3C
/* 805B5A1C  80 03 00 04 */	lwz r0, 4(r3)
/* 805B5A20  2C 00 00 01 */	cmpwi r0, 1
/* 805B5A24  40 82 00 18 */	bne lbl_805B5A3C
/* 805B5A28  80 63 00 00 */	lwz r3, 0(r3)
/* 805B5A2C  28 03 00 00 */	cmplwi r3, 0
/* 805B5A30  41 82 00 0C */	beq lbl_805B5A3C
/* 805B5A34  38 00 00 00 */	li r0, 0
/* 805B5A38  90 03 01 8C */	stw r0, 0x18c(r3)
lbl_805B5A3C:
/* 805B5A3C  7F E3 FB 78 */	mr r3, r31
/* 805B5A40  4B DE 48 61 */	bl mDemo_End
/* 805B5A44  38 80 00 03 */	li r4, 3
/* 805B5A48  48 00 00 08 */	b lbl_805B5A50
lbl_805B5A4C:
/* 805B5A4C  38 80 00 00 */	li r4, 0
lbl_805B5A50:
/* 805B5A50  7F E3 FB 78 */	mr r3, r31
/* 805B5A54  48 00 00 31 */	bl aMHS_setup_action
/* 805B5A58  3C 60 80 65 */	lis r3, lit_457@ha /* 0x8064A970@ha */
/* 805B5A5C  38 00 00 00 */	li r0, 0
/* 805B5A60  C0 03 A9 70 */	lfs f0, lit_457@l(r3)  /* 0x8064A970@l */
/* 805B5A64  D0 1F 02 D0 */	stfs f0, 0x2d0(r31)
/* 805B5A68  90 1F 02 B0 */	stw r0, 0x2b0(r31)
lbl_805B5A6C:
/* 805B5A6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B5A70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B5A74  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B5A78  7C 08 03 A6 */	mtlr r0
/* 805B5A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 805B5A80  4E 80 00 20 */	blr 
