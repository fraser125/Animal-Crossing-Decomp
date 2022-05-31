lbl_80560F04:
/* 80560F04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80560F08  7C 08 02 A6 */	mflr r0
/* 80560F0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80560F10  39 61 00 20 */	addi r11, r1, 0x20
/* 80560F14  4B B3 9F C1 */	bl func_8009AED4
/* 80560F18  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80560F1C  7C 7D 1B 78 */	mr r29, r3
/* 80560F20  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80560F24  7C 9E 23 78 */	mr r30, r4
/* 80560F28  3F E5 00 02 */	addis r31, r5, 2
/* 80560F2C  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80560F30  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80560F34  7D 89 03 A6 */	mtctr r12
/* 80560F38  4E 80 04 21 */	bctrl 
/* 80560F3C  2C 03 00 01 */	cmpwi r3, 1
/* 80560F40  40 82 00 50 */	bne lbl_80560F90
/* 80560F44  3C 60 80 56 */	lis r3, aNNW_schedule_proc@ha /* 0x80566198@ha */
/* 80560F48  3C 80 80 6B */	lis r4, ct_data@ha /* 0x806AA534@ha */
/* 80560F4C  38 03 61 98 */	addi r0, r3, aNNW_schedule_proc@l /* 0x80566198@l */
/* 80560F50  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 80560F54  38 A4 A5 34 */	addi r5, r4, ct_data@l /* 0x806AA534@l */
/* 80560F58  7F A3 EB 78 */	mr r3, r29
/* 80560F5C  7F C4 F3 78 */	mr r4, r30
/* 80560F60  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80560F64  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80560F68  7D 89 03 A6 */	mtctr r12
/* 80560F6C  4E 80 04 21 */	bctrl 
/* 80560F70  38 60 FF FF */	li r3, -1
/* 80560F74  38 00 00 00 */	li r0, 0
/* 80560F78  90 7D 08 F4 */	stw r3, 0x8f4(r29)
/* 80560F7C  98 1D 09 B3 */	stb r0, 0x9b3(r29)
/* 80560F80  98 1D 09 B4 */	stb r0, 0x9b4(r29)
/* 80560F84  98 1D 09 AC */	stb r0, 0x9ac(r29)
/* 80560F88  98 1D 09 AD */	stb r0, 0x9ad(r29)
/* 80560F8C  98 1D 09 BC */	stb r0, 0x9bc(r29)
lbl_80560F90:
/* 80560F90  39 61 00 20 */	addi r11, r1, 0x20
/* 80560F94  4B B3 9F 8D */	bl func_8009AF20
/* 80560F98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80560F9C  7C 08 03 A6 */	mtlr r0
/* 80560FA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80560FA4  4E 80 00 20 */	blr 
