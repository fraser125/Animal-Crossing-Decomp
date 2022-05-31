lbl_803A66D4:
/* 803A66D4  38 60 00 00 */	li r3, 0
/* 803A66D8  3C A0 80 65 */	lis r5, l_keepcld@ha /* 0x80653D2C@ha */
/* 803A66DC  38 00 00 09 */	li r0, 9
/* 803A66E0  38 C0 00 FF */	li r6, 0xff
/* 803A66E4  7C 64 1B 78 */	mr r4, r3
/* 803A66E8  38 A5 3D 2C */	addi r5, r5, l_keepcld@l /* 0x80653D2C@l */
/* 803A66EC  7C 09 03 A6 */	mtctr r0
lbl_803A66F0:
/* 803A66F0  7C E5 1A 14 */	add r7, r5, r3
/* 803A66F4  38 63 00 0C */	addi r3, r3, 0xc
/* 803A66F8  90 C7 00 00 */	stw r6, 0(r7)
/* 803A66FC  90 C7 00 04 */	stw r6, 4(r7)
/* 803A6700  90 87 00 08 */	stw r4, 8(r7)
/* 803A6704  42 00 FF EC */	bdnz lbl_803A66F0
/* 803A6708  4E 80 00 20 */	blr 
