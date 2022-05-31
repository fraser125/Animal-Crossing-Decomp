lbl_80378878:
/* 80378878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037887C  7C 08 02 A6 */	mflr r0
/* 80378880  38 63 1D A8 */	addi r3, r3, 0x1da8
/* 80378884  90 01 00 14 */	stw r0, 0x14(r1)
/* 80378888  4B FF FE E9 */	bl func_80378770
/* 8037888C  28 03 00 00 */	cmplwi r3, 0
/* 80378890  41 82 00 2C */	beq lbl_803788BC
/* 80378894  4B FF BB AD */	bl Actor_delete
/* 80378898  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8037889C  3C A0 80 38 */	lis r5, mBI_make_bg_item@ha /* 0x803787D8@ha */
/* 803788A0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803788A4  3C 80 81 13 */	lis r4, mBI_make_proc@ha /* 0x811351B8@ha */
/* 803788A8  3C 63 00 02 */	addis r3, r3, 2
/* 803788AC  38 A5 87 D8 */	addi r5, r5, mBI_make_bg_item@l /* 0x803787D8@l */
/* 803788B0  A8 03 61 18 */	lha r0, 0x6118(r3)
/* 803788B4  90 A4 51 B8 */	stw r5, mBI_make_proc@l(r4)  /* 0x811351B8@l */
/* 803788B8  B0 03 61 52 */	sth r0, 0x6152(r3)
lbl_803788BC:
/* 803788BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803788C0  7C 08 03 A6 */	mtlr r0
/* 803788C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803788C8  4E 80 00 20 */	blr 
