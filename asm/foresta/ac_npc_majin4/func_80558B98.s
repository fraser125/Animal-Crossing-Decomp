lbl_80558B98:
/* 80558B98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80558B9C  7C 08 02 A6 */	mflr r0
/* 80558BA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80558BA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80558BA8  4B B4 23 2D */	bl func_8009AED4
/* 80558BAC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80558BB0  7C 7D 1B 78 */	mr r29, r3
/* 80558BB4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80558BB8  7C 9E 23 78 */	mr r30, r4
/* 80558BBC  3F E5 00 02 */	addis r31, r5, 2
/* 80558BC0  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80558BC4  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80558BC8  7D 89 03 A6 */	mtctr r12
/* 80558BCC  4E 80 04 21 */	bctrl 
/* 80558BD0  2C 03 00 01 */	cmpwi r3, 1
/* 80558BD4  40 82 00 30 */	bne lbl_80558C04
/* 80558BD8  3C 60 80 56 */	lis r3, aMJN4_schedule_proc@ha /* 0x80559884@ha */
/* 80558BDC  3C 80 80 6A */	lis r4, ct_data@ha /* 0x806A6B0C@ha */
/* 80558BE0  38 03 98 84 */	addi r0, r3, aMJN4_schedule_proc@l /* 0x80559884@l */
/* 80558BE4  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 80558BE8  38 A4 6B 0C */	addi r5, r4, ct_data@l /* 0x806A6B0C@l */
/* 80558BEC  7F A3 EB 78 */	mr r3, r29
/* 80558BF0  7F C4 F3 78 */	mr r4, r30
/* 80558BF4  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80558BF8  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80558BFC  7D 89 03 A6 */	mtctr r12
/* 80558C00  4E 80 04 21 */	bctrl 
lbl_80558C04:
/* 80558C04  3C 60 81 1F */	lis r3, l_ResetTime@ha /* 0x811EC200@ha */
/* 80558C08  3C 80 81 1F */	lis r4, data_811EC1F8@ha /* 0x811EC1F8@ha */
/* 80558C0C  38 00 00 00 */	li r0, 0
/* 80558C10  39 61 00 20 */	addi r11, r1, 0x20
/* 80558C14  38 63 C2 00 */	addi r3, r3, l_ResetTime@l /* 0x811EC200@l */
/* 80558C18  98 04 C1 F8 */	stb r0, data_811EC1F8@l(r4)  /* 0x811EC1F8@l */
/* 80558C1C  90 03 00 04 */	stw r0, 4(r3)
/* 80558C20  90 03 00 00 */	stw r0, 0(r3)
/* 80558C24  4B B4 22 FD */	bl func_8009AF20
/* 80558C28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80558C2C  7C 08 03 A6 */	mtlr r0
/* 80558C30  38 21 00 20 */	addi r1, r1, 0x20
/* 80558C34  4E 80 00 20 */	blr 
