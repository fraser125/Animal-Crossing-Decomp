lbl_805B35D8:
/* 805B35D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B35DC  7C 08 02 A6 */	mflr r0
/* 805B35E0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805B35E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B35E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B35EC  7C 9F 23 78 */	mr r31, r4
/* 805B35F0  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 805B35F4  3C 84 00 02 */	addis r4, r4, 2
/* 805B35F8  80 84 60 E4 */	lwz r4, 0x60e4(r4)
/* 805B35FC  81 84 00 14 */	lwz r12, 0x14(r4)
/* 805B3600  7D 89 03 A6 */	mtctr r12
/* 805B3604  4E 80 04 21 */	bctrl 
/* 805B3608  38 80 01 68 */	li r4, 0x168
/* 805B360C  4B DC 8D 19 */	bl mBGMPsComp_delete_ps_demo
/* 805B3610  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 805B3614  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B3618  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 805B361C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B3620  90 1F 23 F8 */	stw r0, 0x23f8(r31)
/* 805B3624  3F E3 00 02 */	addis r31, r3, 2
/* 805B3628  80 DF 60 84 */	lwz r6, 0x6084(r31)
/* 805B362C  28 06 00 00 */	cmplwi r6, 0
/* 805B3630  41 82 00 24 */	beq lbl_805B3654
/* 805B3634  88 7F 0F 19 */	lbz r3, 0xf19(r31)
/* 805B3638  81 86 00 1C */	lwz r12, 0x1c(r6)
/* 805B363C  54 60 E7 3E */	rlwinm r0, r3, 0x1c, 0x1c, 0x1f
/* 805B3640  54 65 07 3E */	clrlwi r5, r3, 0x1c
/* 805B3644  7C 04 07 34 */	extsh r4, r0
/* 805B3648  80 66 00 00 */	lwz r3, 0(r6)
/* 805B364C  7D 89 03 A6 */	mtctr r12
/* 805B3650  4E 80 04 21 */	bctrl 
lbl_805B3654:
/* 805B3654  38 60 00 01 */	li r3, 1
/* 805B3658  4B DC 91 C9 */	bl mBGMPsComp_scene_mode
/* 805B365C  80 7F 60 84 */	lwz r3, 0x6084(r31)
/* 805B3660  28 03 00 00 */	cmplwi r3, 0
/* 805B3664  41 82 00 10 */	beq lbl_805B3674
/* 805B3668  81 83 00 18 */	lwz r12, 0x18(r3)
/* 805B366C  7D 89 03 A6 */	mtctr r12
/* 805B3670  4E 80 04 21 */	bctrl 
lbl_805B3674:
/* 805B3674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B3678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B367C  7C 08 03 A6 */	mtlr r0
/* 805B3680  38 21 00 10 */	addi r1, r1, 0x10
/* 805B3684  4E 80 00 20 */	blr 
