lbl_804BE604:
/* 804BE604  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BE608  7C 08 02 A6 */	mflr r0
/* 804BE60C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BE610  39 61 00 30 */	addi r11, r1, 0x30
/* 804BE614  4B BD C8 A9 */	bl func_8009AEBC
/* 804BE618  3C 80 81 1D */	lis r4, draw_work@ha /* 0x811CFF00@ha */
/* 804BE61C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804BE620  3B 64 FF 00 */	addi r27, r4, draw_work@l /* 0x811CFF00@l */
/* 804BE624  3F 80 DE 00 */	lis r28, 0xde00
/* 804BE628  83 1B 00 04 */	lwz r24, 4(r27)
/* 804BE62C  3B E3 00 03 */	addi r31, r3, 0x0003 /* 0xDA380003@l */
/* 804BE630  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 804BE634  3F A0 E7 00 */	lis r29, 0xe700
/* 804BE638  80 9B 00 08 */	lwz r4, 8(r27)
/* 804BE63C  3B C0 00 00 */	li r30, 0
/* 804BE640  83 3B 00 14 */	lwz r25, 0x14(r27)
/* 804BE644  1C 60 00 44 */	mulli r3, r0, 0x44
/* 804BE648  82 F8 02 D0 */	lwz r23, 0x2d0(r24)
/* 804BE64C  93 97 00 00 */	stw r28, 0(r23)
/* 804BE650  3B 43 00 6C */	addi r26, r3, 0x6c
/* 804BE654  7F 44 D2 14 */	add r26, r4, r26
/* 804BE658  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 804BE65C  90 17 00 04 */	stw r0, 4(r23)
/* 804BE660  3A F7 00 08 */	addi r23, r23, 8
/* 804BE664  48 00 00 3C */	b lbl_804BE6A0
lbl_804BE668:
/* 804BE668  38 7A 00 04 */	addi r3, r26, 4
/* 804BE66C  4B F4 DB ED */	bl Matrix_put
/* 804BE670  93 B7 00 00 */	stw r29, 0(r23)
/* 804BE674  93 D7 00 04 */	stw r30, 4(r23)
/* 804BE678  97 F7 00 08 */	stwu r31, 8(r23)
/* 804BE67C  80 7B 00 04 */	lwz r3, 4(r27)
/* 804BE680  4B F4 ED 55 */	bl _Matrix_to_Mtx_new
/* 804BE684  90 77 00 04 */	stw r3, 4(r23)
/* 804BE688  93 97 00 08 */	stw r28, 8(r23)
/* 804BE68C  93 37 00 0C */	stw r25, 0xc(r23)
/* 804BE690  3A F7 00 10 */	addi r23, r23, 0x10
/* 804BE694  80 1A 00 00 */	lwz r0, 0(r26)
/* 804BE698  1C 00 00 44 */	mulli r0, r0, 0x44
/* 804BE69C  7F 5A 02 14 */	add r26, r26, r0
lbl_804BE6A0:
/* 804BE6A0  80 1A 00 00 */	lwz r0, 0(r26)
/* 804BE6A4  2C 00 01 00 */	cmpwi r0, 0x100
/* 804BE6A8  40 82 FF C0 */	bne lbl_804BE668
/* 804BE6AC  92 F8 02 D0 */	stw r23, 0x2d0(r24)
/* 804BE6B0  39 61 00 30 */	addi r11, r1, 0x30
/* 804BE6B4  4B BD C8 55 */	bl func_8009AF08
/* 804BE6B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BE6BC  7C 08 03 A6 */	mtlr r0
/* 804BE6C0  38 21 00 30 */	addi r1, r1, 0x30
/* 804BE6C4  4E 80 00 20 */	blr 
