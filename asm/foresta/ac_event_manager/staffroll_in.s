lbl_8041E824:
/* 8041E824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041E828  7C 08 02 A6 */	mflr r0
/* 8041E82C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8041E830  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8041E834  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041E838  3C A5 00 03 */	addis r5, r5, 3
/* 8041E83C  88 05 85 C6 */	lbz r0, -0x7a3a(r5)
/* 8041E840  28 00 00 00 */	cmplwi r0, 0
/* 8041E844  41 82 00 0C */	beq lbl_8041E850
/* 8041E848  38 60 00 03 */	li r3, 3
/* 8041E84C  48 00 00 28 */	b lbl_8041E874
lbl_8041E850:
/* 8041E850  38 A0 00 51 */	li r5, 0x51
/* 8041E854  4B FF E3 5D */	bl show_actor_at_wade_checkless
/* 8041E858  3C 03 00 01 */	addis r0, r3, 1
/* 8041E85C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041E860  40 82 00 0C */	bne lbl_8041E86C
/* 8041E864  38 60 00 02 */	li r3, 2
/* 8041E868  48 00 00 0C */	b lbl_8041E874
lbl_8041E86C:
/* 8041E86C  30 03 FF FF */	addic r0, r3, -1
/* 8041E870  7C 60 19 10 */	subfe r3, r0, r3
lbl_8041E874:
/* 8041E874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041E878  7C 08 03 A6 */	mtlr r0
/* 8041E87C  38 21 00 10 */	addi r1, r1, 0x10
/* 8041E880  4E 80 00 20 */	blr 
