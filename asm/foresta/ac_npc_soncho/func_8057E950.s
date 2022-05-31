lbl_8057E950:
/* 8057E950  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057E954  7C 08 02 A6 */	mflr r0
/* 8057E958  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057E95C  39 61 00 20 */	addi r11, r1, 0x20
/* 8057E960  4B B1 C5 75 */	bl func_8009AED4
/* 8057E964  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057E968  7C 7D 1B 78 */	mr r29, r3
/* 8057E96C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057E970  7C 9E 23 78 */	mr r30, r4
/* 8057E974  3F E5 00 02 */	addis r31, r5, 2
/* 8057E978  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8057E97C  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8057E980  7D 89 03 A6 */	mtctr r12
/* 8057E984  4E 80 04 21 */	bctrl 
/* 8057E988  2C 03 00 01 */	cmpwi r3, 1
/* 8057E98C  40 82 00 4C */	bne lbl_8057E9D8
/* 8057E990  3C 60 80 58 */	lis r3, aNS_schedule_proc@ha /* 0x8057F004@ha */
/* 8057E994  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C0A44@ha */
/* 8057E998  38 03 F0 04 */	addi r0, r3, aNS_schedule_proc@l /* 0x8057F004@l */
/* 8057E99C  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 8057E9A0  38 A4 0A 44 */	addi r5, r4, ct_data@l /* 0x806C0A44@l */
/* 8057E9A4  7F A3 EB 78 */	mr r3, r29
/* 8057E9A8  7F C4 F3 78 */	mr r4, r30
/* 8057E9AC  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8057E9B0  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8057E9B4  7D 89 03 A6 */	mtctr r12
/* 8057E9B8  4E 80 04 21 */	bctrl 
/* 8057E9BC  38 00 FF FF */	li r0, -1
/* 8057E9C0  38 60 00 03 */	li r3, 3
/* 8057E9C4  90 1D 08 F4 */	stw r0, 0x8f4(r29)
/* 8057E9C8  38 00 00 00 */	li r0, 0
/* 8057E9CC  98 7D 07 51 */	stb r3, 0x751(r29)
/* 8057E9D0  98 1D 09 A2 */	stb r0, 0x9a2(r29)
/* 8057E9D4  98 1D 09 A3 */	stb r0, 0x9a3(r29)
lbl_8057E9D8:
/* 8057E9D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8057E9DC  4B B1 C5 45 */	bl func_8009AF20
/* 8057E9E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057E9E4  7C 08 03 A6 */	mtlr r0
/* 8057E9E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8057E9EC  4E 80 00 20 */	blr 
