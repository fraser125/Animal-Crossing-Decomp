lbl_803961F4:
/* 803961F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803961F8  7C 08 02 A6 */	mflr r0
/* 803961FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80396200  39 61 00 20 */	addi r11, r1, 0x20
/* 80396204  4B D0 4C CD */	bl func_8009AED0
/* 80396208  7C BE 2B 78 */	mr r30, r5
/* 8039620C  7C 7C 1B 78 */	mr r28, r3
/* 80396210  83 E5 00 00 */	lwz r31, 0(r5)
/* 80396214  7C 9D 23 78 */	mr r29, r4
/* 80396218  7F E3 FB 78 */	mr r3, r31
/* 8039621C  48 04 F0 F5 */	bl softsprite_prim
/* 80396220  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80396224  3C 00 FA 00 */	lis r0, 0xfa00
/* 80396228  38 60 00 00 */	li r3, 0
/* 8039622C  38 87 00 08 */	addi r4, r7, 8
/* 80396230  90 9F 02 E0 */	stw r4, 0x2e0(r31)
/* 80396234  90 07 00 00 */	stw r0, 0(r7)
/* 80396238  88 1C 00 21 */	lbz r0, 0x21(r28)
/* 8039623C  88 9C 00 20 */	lbz r4, 0x20(r28)
/* 80396240  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 80396244  88 BC 00 22 */	lbz r5, 0x22(r28)
/* 80396248  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 8039624C  88 DC 00 23 */	lbz r6, 0x23(r28)
/* 80396250  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 80396254  50 C0 06 3E */	rlwimi r0, r6, 0, 0x18, 0x1f
/* 80396258  90 07 00 04 */	stw r0, 4(r7)
/* 8039625C  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80396260  C0 5C 00 04 */	lfs f2, 4(r28)
/* 80396264  C0 7C 00 08 */	lfs f3, 8(r28)
/* 80396268  48 07 60 99 */	bl Matrix_translate
/* 8039626C  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 80396270  38 60 00 01 */	li r3, 1
/* 80396274  C0 5C 00 18 */	lfs f2, 0x18(r28)
/* 80396278  C0 7C 00 1C */	lfs f3, 0x1c(r28)
/* 8039627C  48 07 61 71 */	bl Matrix_scale
/* 80396280  38 7E 20 4C */	addi r3, r30, 0x204c
/* 80396284  38 80 00 01 */	li r4, 1
/* 80396288  48 07 60 11 */	bl Matrix_mult
/* 8039628C  A8 7C 00 0C */	lha r3, 0xc(r28)
/* 80396290  38 C0 00 01 */	li r6, 1
/* 80396294  A8 9C 00 0E */	lha r4, 0xe(r28)
/* 80396298  A8 BC 00 10 */	lha r5, 0x10(r28)
/* 8039629C  48 07 66 F9 */	bl Matrix_rotateXYZ
/* 803962A0  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 803962A4  3C C0 07 08 */	lis r6, 0x0708 /* 0x0707F400@ha */
/* 803962A8  3C A0 F5 88 */	lis r5, 0xF588 /* 0xF5880400@ha */
/* 803962AC  3C 80 00 04 */	lis r4, 0x0004 /* 0x0003C03C@ha */
/* 803962B0  38 07 00 08 */	addi r0, r7, 8
/* 803962B4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 803962B8  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 803962BC  3C 00 FD 90 */	lis r0, 0xfd90
/* 803962C0  3F 80 F5 90 */	lis r28, 0xf590
/* 803962C4  3D 80 07 00 */	lis r12, 0x700
/* 803962C8  90 07 00 00 */	stw r0, 0(r7)
/* 803962CC  3D 40 E6 00 */	lis r10, 0xe600
/* 803962D0  39 60 00 00 */	li r11, 0
/* 803962D4  3D 20 F3 00 */	lis r9, 0xf300
/* 803962D8  93 A7 00 04 */	stw r29, 4(r7)
/* 803962DC  39 06 F4 00 */	addi r8, r6, 0xF400 /* 0x0707F400@l */
/* 803962E0  3C E0 E7 00 */	lis r7, 0xe700
/* 803962E4  38 C5 04 00 */	addi r6, r5, 0x0400 /* 0xF5880400@l */
/* 803962E8  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 803962EC  3C A0 F2 00 */	lis r5, 0xf200
/* 803962F0  38 84 C0 3C */	addi r4, r4, 0xC03C /* 0x0003C03C@l */
/* 803962F4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 803962F8  38 7D 00 08 */	addi r3, r29, 8
/* 803962FC  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80396300  93 9D 00 00 */	stw r28, 0(r29)
/* 80396304  91 9D 00 04 */	stw r12, 4(r29)
/* 80396308  81 9F 02 E0 */	lwz r12, 0x2e0(r31)
/* 8039630C  38 6C 00 08 */	addi r3, r12, 8
/* 80396310  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80396314  91 4C 00 00 */	stw r10, 0(r12)
/* 80396318  91 6C 00 04 */	stw r11, 4(r12)
/* 8039631C  81 5F 02 E0 */	lwz r10, 0x2e0(r31)
/* 80396320  38 6A 00 08 */	addi r3, r10, 8
/* 80396324  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80396328  91 2A 00 00 */	stw r9, 0(r10)
/* 8039632C  91 0A 00 04 */	stw r8, 4(r10)
/* 80396330  81 1F 02 E0 */	lwz r8, 0x2e0(r31)
/* 80396334  38 68 00 08 */	addi r3, r8, 8
/* 80396338  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8039633C  90 E8 00 00 */	stw r7, 0(r8)
/* 80396340  91 68 00 04 */	stw r11, 4(r8)
/* 80396344  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80396348  38 67 00 08 */	addi r3, r7, 8
/* 8039634C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80396350  90 C7 00 00 */	stw r6, 0(r7)
/* 80396354  91 67 00 04 */	stw r11, 4(r7)
/* 80396358  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 8039635C  38 66 00 08 */	addi r3, r6, 8
/* 80396360  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80396364  90 A6 00 00 */	stw r5, 0(r6)
/* 80396368  90 86 00 04 */	stw r4, 4(r6)
/* 8039636C  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 80396370  38 7D 00 08 */	addi r3, r29, 8
/* 80396374  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80396378  90 1D 00 00 */	stw r0, 0(r29)
/* 8039637C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80396380  48 07 70 55 */	bl _Matrix_to_Mtx_new
/* 80396384  90 7D 00 04 */	stw r3, 4(r29)
/* 80396388  3C 60 80 EE */	lis r3, RCP_debug_texture_16x16_8@ha /* 0x80ED9648@ha */
/* 8039638C  3C 80 DE 00 */	lis r4, 0xde00
/* 80396390  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80396394  38 03 96 48 */	addi r0, r3, RCP_debug_texture_16x16_8@l /* 0x80ED9648@l */
/* 80396398  38 65 00 08 */	addi r3, r5, 8
/* 8039639C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 803963A0  90 85 00 00 */	stw r4, 0(r5)
/* 803963A4  90 05 00 04 */	stw r0, 4(r5)
/* 803963A8  39 61 00 20 */	addi r11, r1, 0x20
/* 803963AC  4B D0 4B 71 */	bl func_8009AF1C
/* 803963B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803963B4  7C 08 03 A6 */	mtlr r0
/* 803963B8  38 21 00 20 */	addi r1, r1, 0x20
/* 803963BC  4E 80 00 20 */	blr 
