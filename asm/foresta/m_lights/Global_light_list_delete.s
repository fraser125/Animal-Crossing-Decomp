lbl_803BC1E4:
/* 803BC1E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC1E8  7C 08 02 A6 */	mflr r0
/* 803BC1EC  28 04 00 00 */	cmplwi r4, 0
/* 803BC1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC1F4  41 82 00 40 */	beq lbl_803BC234
/* 803BC1F8  80 A4 00 04 */	lwz r5, 4(r4)
/* 803BC1FC  28 05 00 00 */	cmplwi r5, 0
/* 803BC200  41 82 00 10 */	beq lbl_803BC210
/* 803BC204  80 04 00 08 */	lwz r0, 8(r4)
/* 803BC208  90 05 00 08 */	stw r0, 8(r5)
/* 803BC20C  48 00 00 0C */	b lbl_803BC218
lbl_803BC210:
/* 803BC210  80 04 00 08 */	lwz r0, 8(r4)
/* 803BC214  90 03 00 00 */	stw r0, 0(r3)
lbl_803BC218:
/* 803BC218  80 64 00 08 */	lwz r3, 8(r4)
/* 803BC21C  28 03 00 00 */	cmplwi r3, 0
/* 803BC220  41 82 00 0C */	beq lbl_803BC22C
/* 803BC224  80 04 00 04 */	lwz r0, 4(r4)
/* 803BC228  90 03 00 04 */	stw r0, 4(r3)
lbl_803BC22C:
/* 803BC22C  7C 83 23 78 */	mr r3, r4
/* 803BC230  4B FF FE 39 */	bl Light_list_buf_delete
lbl_803BC234:
/* 803BC234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC238  7C 08 03 A6 */	mtlr r0
/* 803BC23C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC240  4E 80 00 20 */	blr 
