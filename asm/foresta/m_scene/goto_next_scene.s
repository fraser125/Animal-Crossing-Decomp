lbl_803F12B8:
/* 803F12B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F12BC  7C 08 02 A6 */	mflr r0
/* 803F12C0  38 C0 00 00 */	li r6, 0
/* 803F12C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F12C8  88 03 20 00 */	lbz r0, 0x2000(r3)
/* 803F12CC  28 00 00 00 */	cmplwi r0, 0
/* 803F12D0  41 82 00 18 */	beq lbl_803F12E8
/* 803F12D4  1C 04 00 14 */	mulli r0, r4, 0x14
/* 803F12D8  80 83 20 04 */	lwz r4, 0x2004(r3)
/* 803F12DC  7C 84 02 14 */	add r4, r4, r0
/* 803F12E0  4B FF FE C9 */	bl goto_other_scene
/* 803F12E4  7C 66 1B 78 */	mr r6, r3
lbl_803F12E8:
/* 803F12E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F12EC  7C C3 33 78 */	mr r3, r6
/* 803F12F0  7C 08 03 A6 */	mtlr r0
/* 803F12F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803F12F8  4E 80 00 20 */	blr 
