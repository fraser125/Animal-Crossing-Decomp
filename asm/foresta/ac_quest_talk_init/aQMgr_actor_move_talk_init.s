lbl_8048D5F0:
/* 8048D5F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048D5F4  7C 08 02 A6 */	mflr r0
/* 8048D5F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048D5FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8048D600  4B C0 D8 D5 */	bl func_8009AED4
/* 8048D604  7C 7D 1B 78 */	mr r29, r3
/* 8048D608  8B C3 01 86 */	lbz r30, 0x186(r3)
/* 8048D60C  4B EF 5F 35 */	bl func_80383540
/* 8048D610  4B EF 65 5D */	bl mChoice_Get_ChoseNum
/* 8048D614  7C 7F 1B 78 */	mr r31, r3
/* 8048D618  4B EF 5F 29 */	bl func_80383540
/* 8048D61C  4B EF 65 59 */	bl mChoice_Clear_ChoseNum
/* 8048D620  3C 80 80 69 */	lis r4, talk_proc@ha /* 0x8068B18C@ha */
/* 8048D624  93 FD 01 A4 */	stw r31, 0x1a4(r29)
/* 8048D628  57 C0 10 3A */	slwi r0, r30, 2
/* 8048D62C  7F A3 EB 78 */	mr r3, r29
/* 8048D630  38 84 B1 8C */	addi r4, r4, talk_proc@l /* 0x8068B18C@l */
/* 8048D634  7D 84 00 2E */	lwzx r12, r4, r0
/* 8048D638  7D 89 03 A6 */	mtctr r12
/* 8048D63C  4E 80 04 21 */	bctrl 
/* 8048D640  81 9D 09 48 */	lwz r12, 0x948(r29)
/* 8048D644  7F A3 EB 78 */	mr r3, r29
/* 8048D648  38 80 00 04 */	li r4, 4
/* 8048D64C  7D 89 03 A6 */	mtctr r12
/* 8048D650  4E 80 04 21 */	bctrl 
/* 8048D654  88 1D 09 5B */	lbz r0, 0x95b(r29)
/* 8048D658  28 00 00 04 */	cmplwi r0, 4
/* 8048D65C  41 80 00 0C */	blt lbl_8048D668
/* 8048D660  38 00 00 01 */	li r0, 1
/* 8048D664  98 1D 01 84 */	stb r0, 0x184(r29)
lbl_8048D668:
/* 8048D668  39 61 00 20 */	addi r11, r1, 0x20
/* 8048D66C  4B C0 D8 B5 */	bl func_8009AF20
/* 8048D670  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048D674  7C 08 03 A6 */	mtlr r0
/* 8048D678  38 21 00 20 */	addi r1, r1, 0x20
/* 8048D67C  4E 80 00 20 */	blr 
