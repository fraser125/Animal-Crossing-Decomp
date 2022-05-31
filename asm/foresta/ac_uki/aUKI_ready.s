lbl_804AE7FC:
/* 804AE7FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AE800  7C 08 02 A6 */	mflr r0
/* 804AE804  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AE808  A8 A3 02 62 */	lha r5, 0x262(r3)
/* 804AE80C  2C 05 00 00 */	cmpwi r5, 0
/* 804AE810  40 82 00 0C */	bne lbl_804AE81C
/* 804AE814  38 00 00 00 */	li r0, 0
/* 804AE818  48 00 00 10 */	b lbl_804AE828
lbl_804AE81C:
/* 804AE81C  38 05 FF FF */	addi r0, r5, -1
/* 804AE820  B0 03 02 62 */	sth r0, 0x262(r3)
/* 804AE824  7C 00 07 34 */	extsh r0, r0
lbl_804AE828:
/* 804AE828  2C 00 00 00 */	cmpwi r0, 0
/* 804AE82C  40 82 00 40 */	bne lbl_804AE86C
/* 804AE830  80 03 02 34 */	lwz r0, 0x234(r3)
/* 804AE834  2C 00 00 04 */	cmpwi r0, 4
/* 804AE838  41 82 00 24 */	beq lbl_804AE85C
/* 804AE83C  40 80 00 38 */	bge lbl_804AE874
/* 804AE840  2C 00 00 03 */	cmpwi r0, 3
/* 804AE844  40 80 00 08 */	bge lbl_804AE84C
/* 804AE848  48 00 00 2C */	b lbl_804AE874
lbl_804AE84C:
/* 804AE84C  38 A0 00 03 */	li r5, 3
/* 804AE850  38 C0 00 00 */	li r6, 0
/* 804AE854  48 00 0B 29 */	bl aUKI_set_proc
/* 804AE858  48 00 00 1C */	b lbl_804AE874
lbl_804AE85C:
/* 804AE85C  38 A0 00 02 */	li r5, 2
/* 804AE860  38 C0 00 00 */	li r6, 0
/* 804AE864  48 00 0B 19 */	bl aUKI_set_proc
/* 804AE868  48 00 00 0C */	b lbl_804AE874
lbl_804AE86C:
/* 804AE86C  38 80 00 00 */	li r4, 0
/* 804AE870  4B FF F4 69 */	bl aUKI_parabola_move
lbl_804AE874:
/* 804AE874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AE878  7C 08 03 A6 */	mtlr r0
/* 804AE87C  38 21 00 10 */	addi r1, r1, 0x10
/* 804AE880  4E 80 00 20 */	blr 
