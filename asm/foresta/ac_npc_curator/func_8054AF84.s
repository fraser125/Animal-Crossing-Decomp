lbl_8054AF84:
/* 8054AF84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054AF88  7C 08 02 A6 */	mflr r0
/* 8054AF8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054AF90  39 61 00 20 */	addi r11, r1, 0x20
/* 8054AF94  4B B4 FF 41 */	bl func_8009AED4
/* 8054AF98  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054AF9C  7C 7F 1B 78 */	mr r31, r3
/* 8054AFA0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8054AFA4  7C 9D 23 78 */	mr r29, r4
/* 8054AFA8  3F C5 00 02 */	addis r30, r5, 2
/* 8054AFAC  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 8054AFB0  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8054AFB4  7D 89 03 A6 */	mtctr r12
/* 8054AFB8  4E 80 04 21 */	bctrl 
/* 8054AFBC  2C 03 00 01 */	cmpwi r3, 1
/* 8054AFC0  40 82 00 94 */	bne lbl_8054B054
/* 8054AFC4  3C 60 80 55 */	lis r3, aCR_schedule_proc@ha /* 0x8054B5E4@ha */
/* 8054AFC8  3C 80 80 6A */	lis r4, ct_data@ha /* 0x806A4ED4@ha */
/* 8054AFCC  38 03 B5 E4 */	addi r0, r3, aCR_schedule_proc@l /* 0x8054B5E4@l */
/* 8054AFD0  90 1F 07 F0 */	stw r0, 0x7f0(r31)
/* 8054AFD4  38 A4 4E D4 */	addi r5, r4, ct_data@l /* 0x806A4ED4@l */
/* 8054AFD8  7F E3 FB 78 */	mr r3, r31
/* 8054AFDC  7F A4 EB 78 */	mr r4, r29
/* 8054AFE0  80 DE 60 4C */	lwz r6, 0x604c(r30)
/* 8054AFE4  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8054AFE8  7D 89 03 A6 */	mtctr r12
/* 8054AFEC  4E 80 04 21 */	bctrl 
/* 8054AFF0  38 00 00 FF */	li r0, 0xff
/* 8054AFF4  3C 60 80 65 */	lis r3, data_806494C4@ha /* 0x806494C4@ha */
/* 8054AFF8  98 1F 00 D6 */	stb r0, 0xd6(r31)
/* 8054AFFC  38 A3 94 C4 */	addi r5, r3, data_806494C4@l /* 0x806494C4@l */
/* 8054B000  3C 80 80 55 */	lis r4, aCR_setupTalkAction@ha /* 0x8054CB90@ha */
/* 8054B004  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054B008  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8054B00C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054B010  C0 05 00 00 */	lfs f0, 0(r5)
/* 8054B014  38 04 CB 90 */	addi r0, r4, aCR_setupTalkAction@l /* 0x8054CB90@l */
/* 8054B018  3C 63 00 02 */	addis r3, r3, 2
/* 8054B01C  EC 01 00 2A */	fadds f0, f1, f0
/* 8054B020  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8054B024  90 1F 09 A8 */	stw r0, 0x9a8(r31)
/* 8054B028  80 03 60 04 */	lwz r0, 0x6004(r3)
/* 8054B02C  2C 00 00 28 */	cmpwi r0, 0x28
/* 8054B030  40 80 00 0C */	bge lbl_8054B03C
/* 8054B034  2C 00 00 24 */	cmpwi r0, 0x24
/* 8054B038  40 80 00 1C */	bge lbl_8054B054
lbl_8054B03C:
/* 8054B03C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054B040  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054B044  3C 63 00 03 */	addis r3, r3, 3
/* 8054B048  88 03 88 7F */	lbz r0, -0x7781(r3)
/* 8054B04C  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8054B050  98 03 88 7F */	stb r0, -0x7781(r3)
lbl_8054B054:
/* 8054B054  39 61 00 20 */	addi r11, r1, 0x20
/* 8054B058  4B B4 FE C9 */	bl func_8009AF20
/* 8054B05C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054B060  7C 08 03 A6 */	mtlr r0
/* 8054B064  38 21 00 20 */	addi r1, r1, 0x20
/* 8054B068  4E 80 00 20 */	blr 
