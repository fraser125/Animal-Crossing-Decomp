lbl_8048958C:
/* 8048958C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80489590  7C 08 02 A6 */	mflr r0
/* 80489594  90 01 00 24 */	stw r0, 0x24(r1)
/* 80489598  39 61 00 20 */	addi r11, r1, 0x20
/* 8048959C  4B C1 19 35 */	bl func_8009AED0
/* 804895A0  7C 9F 23 78 */	mr r31, r4
/* 804895A4  7C BD 2B 78 */	mr r29, r5
/* 804895A8  7C DC 33 78 */	mr r28, r6
/* 804895AC  4B F4 89 55 */	bl mNpc_GetNpcLooks
/* 804895B0  2C 1D 00 00 */	cmpwi r29, 0
/* 804895B4  7C 7E 1B 78 */	mr r30, r3
/* 804895B8  3B A0 00 00 */	li r29, 0
/* 804895BC  40 82 00 2C */	bne lbl_804895E8
/* 804895C0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804895C4  7F E3 FB 78 */	mr r3, r31
/* 804895C8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804895CC  7F C5 F3 78 */	mr r5, r30
/* 804895D0  3C C4 00 02 */	addis r6, r4, 2
/* 804895D4  38 80 3E 3A */	li r4, 0x3e3a
/* 804895D8  88 C6 61 22 */	lbz r6, 0x6122(r6)
/* 804895DC  38 E0 00 03 */	li r7, 3
/* 804895E0  4B FF EE 11 */	bl aQMgr_actor_get_my_hello_msg_com
/* 804895E4  48 00 00 A0 */	b lbl_80489684
lbl_804895E8:
/* 804895E8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804895EC  38 80 00 00 */	li r4, 0
/* 804895F0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804895F4  3F E3 00 02 */	addis r31, r3, 2
/* 804895F8  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 804895FC  4B F5 71 2D */	bl mPr_GetPossessionItemIdx
/* 80489600  2C 03 FF FF */	cmpwi r3, -1
/* 80489604  41 82 00 18 */	beq lbl_8048961C
/* 80489608  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8048960C  80 03 00 8C */	lwz r0, 0x8c(r3)
/* 80489610  28 00 0B B8 */	cmplwi r0, 0xbb8
/* 80489614  41 80 00 08 */	blt lbl_8048961C
/* 80489618  63 BD 00 01 */	ori r29, r29, 1
lbl_8048961C:
/* 8048961C  7F 83 E3 78 */	mr r3, r28
/* 80489620  4B FF F7 A1 */	bl aQMgr_check_possession_item
/* 80489624  2C 03 00 01 */	cmpwi r3, 1
/* 80489628  40 82 00 08 */	bne lbl_80489630
/* 8048962C  63 BD 00 02 */	ori r29, r29, 2
lbl_80489630:
/* 80489630  2C 1D 00 03 */	cmpwi r29, 3
/* 80489634  40 82 00 3C */	bne lbl_80489670
/* 80489638  4B BD 36 BD */	bl fqrand
/* 8048963C  3C 80 80 64 */	lis r4, data_80644BB4@ha /* 0x80644BB4@ha */
/* 80489640  3C 60 80 69 */	lis r3, msg_table@ha /* 0x8068AF2C@ha */
/* 80489644  C0 04 4B B4 */	lfs f0, data_80644BB4@l(r4)  /* 0x80644BB4@l */
/* 80489648  57 C0 10 3A */	slwi r0, r30, 2
/* 8048964C  38 63 AF 2C */	addi r3, r3, msg_table@l /* 0x8068AF2C@l */
/* 80489650  EC 00 00 72 */	fmuls f0, f0, f1
/* 80489654  7C 03 00 2E */	lwzx r0, r3, r0
/* 80489658  FC 00 00 1E */	fctiwz f0, f0
/* 8048965C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80489660  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80489664  7C 60 1A 14 */	add r3, r0, r3
/* 80489668  38 63 00 01 */	addi r3, r3, 1
/* 8048966C  48 00 00 18 */	b lbl_80489684
lbl_80489670:
/* 80489670  3C 60 80 69 */	lis r3, msg_table@ha /* 0x8068AF2C@ha */
/* 80489674  57 C0 10 3A */	slwi r0, r30, 2
/* 80489678  38 63 AF 2C */	addi r3, r3, msg_table@l /* 0x8068AF2C@l */
/* 8048967C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80489680  7C 7D 02 14 */	add r3, r29, r0
lbl_80489684:
/* 80489684  39 61 00 20 */	addi r11, r1, 0x20
/* 80489688  4B C1 18 95 */	bl func_8009AF1C
/* 8048968C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80489690  7C 08 03 A6 */	mtlr r0
/* 80489694  38 21 00 20 */	addi r1, r1, 0x20
/* 80489698  4E 80 00 20 */	blr 
