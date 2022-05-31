lbl_804C3680:
/* 804C3680  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C3684  7C 08 02 A6 */	mflr r0
/* 804C3688  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C368C  39 61 00 40 */	addi r11, r1, 0x40
/* 804C3690  4B BD 78 29 */	bl func_8009AEB8
/* 804C3694  7C BE 2B 79 */	or. r30, r5, r5
/* 804C3698  83 81 00 48 */	lwz r28, 0x48(r1)
/* 804C369C  83 A1 00 4C */	lwz r29, 0x4c(r1)
/* 804C36A0  7C 76 1B 78 */	mr r22, r3
/* 804C36A4  7C D7 33 78 */	mr r23, r6
/* 804C36A8  7C F8 3B 78 */	mr r24, r7
/* 804C36AC  7D 19 43 78 */	mr r25, r8
/* 804C36B0  7D 3A 4B 78 */	mr r26, r9
/* 804C36B4  7D 5B 53 78 */	mr r27, r10
/* 804C36B8  41 82 01 98 */	beq lbl_804C3850
/* 804C36BC  A8 1E 00 02 */	lha r0, 2(r30)
/* 804C36C0  2C 00 00 7A */	cmpwi r0, 0x7a
/* 804C36C4  41 82 01 8C */	beq lbl_804C3850
/* 804C36C8  7C 00 07 35 */	extsh. r0, r0
/* 804C36CC  40 80 00 08 */	bge lbl_804C36D4
/* 804C36D0  48 00 01 80 */	b lbl_804C3850
lbl_804C36D4:
/* 804C36D4  4B F4 8B 01 */	bl Matrix_push
/* 804C36D8  A8 1E 00 02 */	lha r0, 2(r30)
/* 804C36DC  3C 80 80 6A */	lis r4, draw_part_table_a@ha /* 0x80698444@ha */
/* 804C36E0  3C 60 81 1D */	lis r3, draw_pos@ha /* 0x811CFF68@ha */
/* 804C36E4  88 BE 00 00 */	lbz r5, 0(r30)
/* 804C36E8  54 00 18 38 */	slwi r0, r0, 3
/* 804C36EC  38 84 84 44 */	addi r4, r4, draw_part_table_a@l /* 0x80698444@l */
/* 804C36F0  7F E4 00 2E */	lwzx r31, r4, r0
/* 804C36F4  38 83 FF 68 */	addi r4, r3, draw_pos@l /* 0x811CFF68@l */
/* 804C36F8  38 00 00 00 */	li r0, 0
/* 804C36FC  38 60 00 00 */	li r3, 0
/* 804C3700  83 DF 00 00 */	lwz r30, 0(r31)
/* 804C3704  98 A4 00 44 */	stb r5, 0x44(r4)
/* 804C3708  B0 04 00 40 */	sth r0, 0x40(r4)
/* 804C370C  9B 44 00 42 */	stb r26, 0x42(r4)
/* 804C3710  C0 37 00 00 */	lfs f1, 0(r23)
/* 804C3714  C0 57 00 04 */	lfs f2, 4(r23)
/* 804C3718  C0 77 00 08 */	lfs f3, 8(r23)
/* 804C371C  4B F4 8B E5 */	bl Matrix_translate
/* 804C3720  A8 78 00 02 */	lha r3, 2(r24)
/* 804C3724  38 80 00 01 */	li r4, 1
/* 804C3728  4B F4 8F 35 */	bl Matrix_RotateY
/* 804C372C  A8 78 00 00 */	lha r3, 0(r24)
/* 804C3730  38 80 00 01 */	li r4, 1
/* 804C3734  4B F4 8D 85 */	bl Matrix_RotateX
/* 804C3738  A8 78 00 04 */	lha r3, 4(r24)
/* 804C373C  38 80 00 01 */	li r4, 1
/* 804C3740  4B F4 90 B1 */	bl Matrix_RotateZ
/* 804C3744  C0 39 00 00 */	lfs f1, 0(r25)
/* 804C3748  38 60 00 01 */	li r3, 1
/* 804C374C  C0 59 00 04 */	lfs f2, 4(r25)
/* 804C3750  C0 79 00 08 */	lfs f3, 8(r25)
/* 804C3754  4B F4 8C 99 */	bl Matrix_scale
/* 804C3758  3C 60 81 1D */	lis r3, draw_pos@ha /* 0x811CFF68@ha */
/* 804C375C  38 63 FF 68 */	addi r3, r3, draw_pos@l /* 0x811CFF68@l */
/* 804C3760  4B F4 8A CD */	bl Matrix_get
/* 804C3764  28 1B 00 00 */	cmplwi r27, 0
/* 804C3768  41 82 00 64 */	beq lbl_804C37CC
/* 804C376C  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 804C3770  28 00 00 FF */	cmplwi r0, 0xff
/* 804C3774  40 82 00 30 */	bne lbl_804C37A4
/* 804C3778  82 F6 00 00 */	lwz r23, 0(r22)
/* 804C377C  7F 6C DB 78 */	mr r12, r27
/* 804C3780  7F A4 EB 78 */	mr r4, r29
/* 804C3784  38 61 00 08 */	addi r3, r1, 8
/* 804C3788  80 17 02 D0 */	lwz r0, 0x2d0(r23)
/* 804C378C  90 01 00 08 */	stw r0, 8(r1)
/* 804C3790  7D 89 03 A6 */	mtctr r12
/* 804C3794  4E 80 04 21 */	bctrl 
/* 804C3798  80 01 00 08 */	lwz r0, 8(r1)
/* 804C379C  90 17 02 D0 */	stw r0, 0x2d0(r23)
/* 804C37A0  48 00 00 2C */	b lbl_804C37CC
lbl_804C37A4:
/* 804C37A4  82 F6 00 00 */	lwz r23, 0(r22)
/* 804C37A8  7F 6C DB 78 */	mr r12, r27
/* 804C37AC  7F A4 EB 78 */	mr r4, r29
/* 804C37B0  38 61 00 08 */	addi r3, r1, 8
/* 804C37B4  80 17 02 E0 */	lwz r0, 0x2e0(r23)
/* 804C37B8  90 01 00 08 */	stw r0, 8(r1)
/* 804C37BC  7D 89 03 A6 */	mtctr r12
/* 804C37C0  4E 80 04 21 */	bctrl 
/* 804C37C4  80 01 00 08 */	lwz r0, 8(r1)
/* 804C37C8  90 17 02 E0 */	stw r0, 0x2e0(r23)
lbl_804C37CC:
/* 804C37CC  3C 80 81 1D */	lis r4, draw_pos@ha /* 0x811CFF68@ha */
/* 804C37D0  80 76 00 00 */	lwz r3, 0(r22)
/* 804C37D4  38 84 FF 68 */	addi r4, r4, draw_pos@l /* 0x811CFF68@l */
/* 804C37D8  7F E5 FB 78 */	mr r5, r31
/* 804C37DC  7F C6 F3 78 */	mr r6, r30
/* 804C37E0  4B FF FD 41 */	bl bit_cmn_single_draw_item_body
/* 804C37E4  28 1C 00 00 */	cmplwi r28, 0
/* 804C37E8  41 82 00 64 */	beq lbl_804C384C
/* 804C37EC  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 804C37F0  28 00 00 FF */	cmplwi r0, 0xff
/* 804C37F4  40 82 00 30 */	bne lbl_804C3824
/* 804C37F8  82 D6 00 00 */	lwz r22, 0(r22)
/* 804C37FC  7F 8C E3 78 */	mr r12, r28
/* 804C3800  7F A4 EB 78 */	mr r4, r29
/* 804C3804  38 61 00 08 */	addi r3, r1, 8
/* 804C3808  80 16 02 D0 */	lwz r0, 0x2d0(r22)
/* 804C380C  90 01 00 08 */	stw r0, 8(r1)
/* 804C3810  7D 89 03 A6 */	mtctr r12
/* 804C3814  4E 80 04 21 */	bctrl 
/* 804C3818  80 01 00 08 */	lwz r0, 8(r1)
/* 804C381C  90 16 02 D0 */	stw r0, 0x2d0(r22)
/* 804C3820  48 00 00 2C */	b lbl_804C384C
lbl_804C3824:
/* 804C3824  82 D6 00 00 */	lwz r22, 0(r22)
/* 804C3828  7F 8C E3 78 */	mr r12, r28
/* 804C382C  7F A4 EB 78 */	mr r4, r29
/* 804C3830  38 61 00 08 */	addi r3, r1, 8
/* 804C3834  80 16 02 E0 */	lwz r0, 0x2e0(r22)
/* 804C3838  90 01 00 08 */	stw r0, 8(r1)
/* 804C383C  7D 89 03 A6 */	mtctr r12
/* 804C3840  4E 80 04 21 */	bctrl 
/* 804C3844  80 01 00 08 */	lwz r0, 8(r1)
/* 804C3848  90 16 02 E0 */	stw r0, 0x2e0(r22)
lbl_804C384C:
/* 804C384C  4B F4 89 C9 */	bl Matrix_pull
lbl_804C3850:
/* 804C3850  39 61 00 40 */	addi r11, r1, 0x40
/* 804C3854  4B BD 76 B1 */	bl func_8009AF04
/* 804C3858  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C385C  7C 08 03 A6 */	mtlr r0
/* 804C3860  38 21 00 40 */	addi r1, r1, 0x40
/* 804C3864  4E 80 00 20 */	blr 
