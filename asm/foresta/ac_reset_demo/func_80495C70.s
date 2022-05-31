lbl_80495C70:
/* 80495C70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80495C74  7C 08 02 A6 */	mflr r0
/* 80495C78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80495C7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80495C80  4B C0 52 55 */	bl func_8009AED4
/* 80495C84  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80495C88  3C C0 81 1D */	lis r6, aRSD_clip@ha /* 0x811CEE08@ha */
/* 80495C8C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80495C90  7C 9E 23 78 */	mr r30, r4
/* 80495C94  38 06 EE 08 */	addi r0, r6, aRSD_clip@l /* 0x811CEE08@l */
/* 80495C98  7C 7D 1B 78 */	mr r29, r3
/* 80495C9C  3F E5 00 02 */	addis r31, r5, 2
/* 80495CA0  38 80 00 08 */	li r4, 8
/* 80495CA4  90 1F 60 B0 */	stw r0, 0x60b0(r31)
/* 80495CA8  7C 03 03 78 */	mr r3, r0
/* 80495CAC  4B BC 73 BD */	bl bzero
/* 80495CB0  80 BF 60 B0 */	lwz r5, 0x60b0(r31)
/* 80495CB4  38 00 00 05 */	li r0, 5
/* 80495CB8  7F A3 EB 78 */	mr r3, r29
/* 80495CBC  7F C4 F3 78 */	mr r4, r30
/* 80495CC0  93 A5 00 00 */	stw r29, 0(r5)
/* 80495CC4  38 A0 00 00 */	li r5, 0
/* 80495CC8  80 DF 60 B0 */	lwz r6, 0x60b0(r31)
/* 80495CCC  90 06 00 04 */	stw r0, 4(r6)
/* 80495CD0  48 00 04 01 */	bl aRSD_setupAction
/* 80495CD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80495CD8  4B C0 52 49 */	bl func_8009AF20
/* 80495CDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80495CE0  7C 08 03 A6 */	mtlr r0
/* 80495CE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80495CE8  4E 80 00 20 */	blr 
