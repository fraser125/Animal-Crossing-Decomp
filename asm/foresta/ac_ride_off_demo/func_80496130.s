lbl_80496130:
/* 80496130  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80496134  7C 08 02 A6 */	mflr r0
/* 80496138  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049613C  39 61 00 20 */	addi r11, r1, 0x20
/* 80496140  4B C0 4D 95 */	bl func_8009AED4
/* 80496144  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80496148  3C C0 81 1D */	lis r6, aROD_clip@ha /* 0x811CEE10@ha */
/* 8049614C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80496150  7C 9E 23 78 */	mr r30, r4
/* 80496154  38 06 EE 10 */	addi r0, r6, aROD_clip@l /* 0x811CEE10@l */
/* 80496158  7C 7D 1B 78 */	mr r29, r3
/* 8049615C  3F E5 00 02 */	addis r31, r5, 2
/* 80496160  38 80 00 08 */	li r4, 8
/* 80496164  90 1F 60 AC */	stw r0, 0x60ac(r31)
/* 80496168  7C 03 03 78 */	mr r3, r0
/* 8049616C  4B BC 6E FD */	bl bzero
/* 80496170  80 BF 60 AC */	lwz r5, 0x60ac(r31)
/* 80496174  38 00 00 02 */	li r0, 2
/* 80496178  7F A3 EB 78 */	mr r3, r29
/* 8049617C  7F C4 F3 78 */	mr r4, r30
/* 80496180  93 A5 00 00 */	stw r29, 0(r5)
/* 80496184  38 A0 00 00 */	li r5, 0
/* 80496188  80 DF 60 AC */	lwz r6, 0x60ac(r31)
/* 8049618C  90 06 00 04 */	stw r0, 4(r6)
/* 80496190  48 00 04 CD */	bl aROD_setupAction
/* 80496194  39 61 00 20 */	addi r11, r1, 0x20
/* 80496198  4B C0 4D 89 */	bl func_8009AF20
/* 8049619C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804961A0  7C 08 03 A6 */	mtlr r0
/* 804961A4  38 21 00 20 */	addi r1, r1, 0x20
/* 804961A8  4E 80 00 20 */	blr 
