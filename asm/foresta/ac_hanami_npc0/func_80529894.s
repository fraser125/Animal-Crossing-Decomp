lbl_80529894:
/* 80529894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80529898  7C 08 02 A6 */	mflr r0
/* 8052989C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805298A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805298A4  4B B7 16 31 */	bl func_8009AED4
/* 805298A8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805298AC  7C 7D 1B 78 */	mr r29, r3
/* 805298B0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805298B4  7C 9E 23 78 */	mr r30, r4
/* 805298B8  3F E5 00 02 */	addis r31, r5, 2
/* 805298BC  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 805298C0  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 805298C4  7D 89 03 A6 */	mtctr r12
/* 805298C8  4E 80 04 21 */	bctrl 
/* 805298CC  2C 03 00 01 */	cmpwi r3, 1
/* 805298D0  40 82 00 30 */	bne lbl_80529900
/* 805298D4  3C 60 80 53 */	lis r3, aHM0_schedule_proc@ha /* 0x80529F40@ha */
/* 805298D8  3C 80 80 6A */	lis r4, ct_data@ha /* 0x806A118C@ha */
/* 805298DC  38 03 9F 40 */	addi r0, r3, aHM0_schedule_proc@l /* 0x80529F40@l */
/* 805298E0  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 805298E4  38 A4 11 8C */	addi r5, r4, ct_data@l /* 0x806A118C@l */
/* 805298E8  7F A3 EB 78 */	mr r3, r29
/* 805298EC  7F C4 F3 78 */	mr r4, r30
/* 805298F0  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 805298F4  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 805298F8  7D 89 03 A6 */	mtctr r12
/* 805298FC  4E 80 04 21 */	bctrl 
lbl_80529900:
/* 80529900  39 61 00 20 */	addi r11, r1, 0x20
/* 80529904  4B B7 16 1D */	bl func_8009AF20
/* 80529908  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052990C  7C 08 03 A6 */	mtlr r0
/* 80529910  38 21 00 20 */	addi r1, r1, 0x20
/* 80529914  4E 80 00 20 */	blr 
