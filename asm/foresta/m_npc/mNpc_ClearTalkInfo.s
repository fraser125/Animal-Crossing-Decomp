lbl_803D353C:
/* 803D353C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D3540  7C 08 02 A6 */	mflr r0
/* 803D3544  3C 60 81 17 */	lis r3, l_npc_talk_info@ha /* 0x8116C5AC@ha */
/* 803D3548  38 80 00 80 */	li r4, 0x80
/* 803D354C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D3550  38 63 C5 AC */	addi r3, r3, l_npc_talk_info@l /* 0x8116C5AC@l */
/* 803D3554  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D3558  7C 7F 1B 78 */	mr r31, r3
/* 803D355C  4B C8 9B 0D */	bl bzero
/* 803D3560  38 00 00 10 */	li r0, 0x10
/* 803D3564  38 60 00 01 */	li r3, 1
/* 803D3568  7C 09 03 A6 */	mtctr r0
lbl_803D356C:
/* 803D356C  98 7F 00 03 */	stb r3, 3(r31)
/* 803D3570  3B FF 00 08 */	addi r31, r31, 8
/* 803D3574  42 00 FF F8 */	bdnz lbl_803D356C
/* 803D3578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D357C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D3580  7C 08 03 A6 */	mtlr r0
/* 803D3584  38 21 00 10 */	addi r1, r1, 0x10
/* 803D3588  4E 80 00 20 */	blr 
