lbl_80414668:
/* 80414668  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8041466C  7C 08 02 A6 */	mflr r0
/* 80414670  90 01 00 54 */	stw r0, 0x54(r1)
/* 80414674  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80414678  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8041467C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80414680  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80414684  39 61 00 30 */	addi r11, r1, 0x30
/* 80414688  4B C8 68 31 */	bl func_8009AEB8
/* 8041468C  7C 99 23 78 */	mr r25, r4
/* 80414690  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80414694  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80414698  3C 80 80 66 */	lis r4, aBC_pos_table@ha /* 0x8065FBD4@ha */
/* 8041469C  83 B9 00 F0 */	lwz r29, 0xf0(r25)
/* 804146A0  7C 78 1B 78 */	mr r24, r3
/* 804146A4  C3 F9 00 E8 */	lfs f31, 0xe8(r25)
/* 804146A8  3F C5 00 02 */	addis r30, r5, 2
/* 804146AC  C3 D9 00 EC */	lfs f30, 0xec(r25)
/* 804146B0  3B E4 FB D4 */	addi r31, r4, aBC_pos_table@l /* 0x8065FBD4@l */
/* 804146B4  3B 80 00 00 */	li r28, 0
/* 804146B8  3B 60 00 00 */	li r27, 0
/* 804146BC  3A E0 00 00 */	li r23, 0
lbl_804146C0:
/* 804146C0  3B 40 00 00 */	li r26, 0
/* 804146C4  3A C0 00 00 */	li r22, 0
lbl_804146C8:
/* 804146C8  A0 9D 00 00 */	lhz r4, 0(r29)
/* 804146CC  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 804146D0  2C 00 00 08 */	cmpwi r0, 8
/* 804146D4  41 82 00 20 */	beq lbl_804146F4
/* 804146D8  40 80 00 10 */	bge lbl_804146E8
/* 804146DC  2C 00 00 05 */	cmpwi r0, 5
/* 804146E0  41 82 00 B4 */	beq lbl_80414794
/* 804146E4  48 00 00 F8 */	b lbl_804147DC
lbl_804146E8:
/* 804146E8  2C 00 00 0A */	cmpwi r0, 0xa
/* 804146EC  41 82 00 48 */	beq lbl_80414734
/* 804146F0  48 00 00 EC */	b lbl_804147DC
lbl_804146F4:
/* 804146F4  3C 60 80 66 */	lis r3, aBC_pos_table@ha /* 0x8065FBD4@ha */
/* 804146F8  7C 1F BC 2E */	lfsx f0, r31, r23
/* 804146FC  38 63 FB D4 */	addi r3, r3, aBC_pos_table@l /* 0x8065FBD4@l */
/* 80414700  38 04 80 00 */	addi r0, r4, -32768
/* 80414704  7C 23 B4 2E */	lfsx f1, r3, r22
/* 80414708  3C 60 80 66 */	lis r3, data_8065A330@ha /* 0x8065A330@ha */
/* 8041470C  54 00 08 3C */	slwi r0, r0, 1
/* 80414710  EC 5E 00 2A */	fadds f2, f30, f0
/* 80414714  38 63 A3 30 */	addi r3, r3, data_8065A330@l /* 0x8065A330@l */
/* 80414718  EC 3F 08 2A */	fadds f1, f31, f1
/* 8041471C  7C A3 02 AE */	lhax r5, r3, r0
/* 80414720  7F 23 CB 78 */	mr r3, r25
/* 80414724  38 C0 00 00 */	li r6, 0
/* 80414728  4B FF FE 39 */	bl aBC_setupOtherActor
/* 8041472C  7F 9C 1B 78 */	or r28, r28, r3
/* 80414730  48 00 00 AC */	b lbl_804147DC
lbl_80414734:
/* 80414734  28 04 A0 08 */	cmplwi r4, 0xa008
/* 80414738  41 80 00 14 */	blt lbl_8041474C
/* 8041473C  28 04 A0 10 */	cmplwi r4, 0xa010
/* 80414740  41 81 00 0C */	bgt lbl_8041474C
/* 80414744  38 C0 00 00 */	li r6, 0
/* 80414748  48 00 00 0C */	b lbl_80414754
lbl_8041474C:
/* 8041474C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80414750  38 C3 FF FF */	addi r6, r3, 0xFFFF /* 0x0000FFFF@l */
lbl_80414754:
/* 80414754  3C 60 80 66 */	lis r3, aBC_pos_table@ha /* 0x8065FBD4@ha */
/* 80414758  3C A4 FF FF */	addis r5, r4, 0xffff
/* 8041475C  38 63 FB D4 */	addi r3, r3, aBC_pos_table@l /* 0x8065FBD4@l */
/* 80414760  7C 1F BC 2E */	lfsx f0, r31, r23
/* 80414764  7C 23 B4 2E */	lfsx f1, r3, r22
/* 80414768  38 05 60 00 */	addi r0, r5, 0x6000
/* 8041476C  3C 60 80 66 */	lis r3, props_profile_table@ha /* 0x8065A360@ha */
/* 80414770  EC 5E 00 2A */	fadds f2, f30, f0
/* 80414774  38 A3 A3 60 */	addi r5, r3, props_profile_table@l /* 0x8065A360@l */
/* 80414778  54 00 08 3C */	slwi r0, r0, 1
/* 8041477C  EC 3F 08 2A */	fadds f1, f31, f1
/* 80414780  7C A5 02 AE */	lhax r5, r5, r0
/* 80414784  7F 23 CB 78 */	mr r3, r25
/* 80414788  4B FF FD D9 */	bl aBC_setupOtherActor
/* 8041478C  7F 9C 1B 78 */	or r28, r28, r3
/* 80414790  48 00 00 4C */	b lbl_804147DC
lbl_80414794:
/* 80414794  80 BE 60 98 */	lwz r5, 0x6098(r30)
/* 80414798  28 05 00 00 */	cmplwi r5, 0
/* 8041479C  41 82 00 40 */	beq lbl_804147DC
/* 804147A0  3C 60 80 66 */	lis r3, aBC_pos_table@ha /* 0x8065FBD4@ha */
/* 804147A4  7C 1F BC 2E */	lfsx f0, r31, r23
/* 804147A8  38 63 FB D4 */	addi r3, r3, aBC_pos_table@l /* 0x8065FBD4@l */
/* 804147AC  81 85 00 00 */	lwz r12, 0(r5)
/* 804147B0  7C 23 B4 2E */	lfsx f1, r3, r22
/* 804147B4  EC 5E 00 2A */	fadds f2, f30, f0
/* 804147B8  7F 23 CB 78 */	mr r3, r25
/* 804147BC  38 A0 FF FF */	li r5, -1
/* 804147C0  EC 3F 08 2A */	fadds f1, f31, f1
/* 804147C4  7D 89 03 A6 */	mtctr r12
/* 804147C8  4E 80 04 21 */	bctrl 
/* 804147CC  7C 03 00 D0 */	neg r0, r3
/* 804147D0  7C 00 00 34 */	cntlzw r0, r0
/* 804147D4  54 00 D9 7E */	srwi r0, r0, 5
/* 804147D8  7F 9C 03 78 */	or r28, r28, r0
lbl_804147DC:
/* 804147DC  3B 5A 00 01 */	addi r26, r26, 1
/* 804147E0  3A D6 00 04 */	addi r22, r22, 4
/* 804147E4  2C 1A 00 10 */	cmpwi r26, 0x10
/* 804147E8  3B BD 00 02 */	addi r29, r29, 2
/* 804147EC  41 80 FE DC */	blt lbl_804146C8
/* 804147F0  3B 7B 00 01 */	addi r27, r27, 1
/* 804147F4  3A F7 00 04 */	addi r23, r23, 4
/* 804147F8  2C 1B 00 10 */	cmpwi r27, 0x10
/* 804147FC  41 80 FE C4 */	blt lbl_804146C0
/* 80414800  93 98 01 74 */	stw r28, 0x174(r24)
/* 80414804  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80414808  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8041480C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80414810  39 61 00 30 */	addi r11, r1, 0x30
/* 80414814  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80414818  4B C8 66 ED */	bl func_8009AF04
/* 8041481C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80414820  7C 08 03 A6 */	mtlr r0
/* 80414824  38 21 00 50 */	addi r1, r1, 0x50
/* 80414828  4E 80 00 20 */	blr 
