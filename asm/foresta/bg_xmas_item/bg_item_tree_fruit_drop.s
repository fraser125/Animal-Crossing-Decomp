lbl_804C8778:
/* 804C8778  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C877C  7C 08 02 A6 */	mflr r0
/* 804C8780  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C8784  39 61 00 40 */	addi r11, r1, 0x40
/* 804C8788  4B BD 27 45 */	bl func_8009AECC
/* 804C878C  7C 7B 1B 78 */	mr r27, r3
/* 804C8790  7C 9E 23 78 */	mr r30, r4
/* 804C8794  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804C8798  7C BF 2B 78 */	mr r31, r5
/* 804C879C  28 00 08 04 */	cmplwi r0, 0x804
/* 804C87A0  7C DC 33 78 */	mr r28, r6
/* 804C87A4  41 82 00 14 */	beq lbl_804C87B8
/* 804C87A8  28 00 08 61 */	cmplwi r0, 0x861
/* 804C87AC  41 82 00 0C */	beq lbl_804C87B8
/* 804C87B0  28 00 08 68 */	cmplwi r0, 0x868
/* 804C87B4  40 82 00 40 */	bne lbl_804C87F4
lbl_804C87B8:
/* 804C87B8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C87BC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C87C0  3C 63 00 02 */	addis r3, r3, 2
/* 804C87C4  80 63 60 88 */	lwz r3, 0x6088(r3)
/* 804C87C8  28 03 00 00 */	cmplwi r3, 0
/* 804C87CC  41 82 01 10 */	beq lbl_804C88DC
/* 804C87D0  81 83 00 14 */	lwz r12, 0x14(r3)
/* 804C87D4  28 0C 00 00 */	cmplwi r12, 0
/* 804C87D8  41 82 01 04 */	beq lbl_804C88DC
/* 804C87DC  7F C4 F3 78 */	mr r4, r30
/* 804C87E0  7F E5 FB 78 */	mr r5, r31
/* 804C87E4  38 60 00 04 */	li r3, 4
/* 804C87E8  7D 89 03 A6 */	mtctr r12
/* 804C87EC  4E 80 04 21 */	bctrl 
/* 804C87F0  48 00 00 EC */	b lbl_804C88DC
lbl_804C87F4:
/* 804C87F4  28 00 00 5E */	cmplwi r0, 0x5e
/* 804C87F8  41 82 00 14 */	beq lbl_804C880C
/* 804C87FC  28 00 00 7A */	cmplwi r0, 0x7a
/* 804C8800  41 82 00 0C */	beq lbl_804C880C
/* 804C8804  28 00 00 81 */	cmplwi r0, 0x81
/* 804C8808  40 82 00 CC */	bne lbl_804C88D4
lbl_804C880C:
/* 804C880C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804C8810  3C 60 80 6A */	lis r3, wait_pos@ha /* 0x8069BA74@ha */
/* 804C8814  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 804C8818  39 40 FF FF */	li r10, -1
/* 804C881C  80 84 00 00 */	lwz r4, 0(r4)
/* 804C8820  39 23 BA 74 */	addi r9, r3, wait_pos@l /* 0x8069BA74@l */
/* 804C8824  38 00 00 00 */	li r0, 0
/* 804C8828  38 A0 00 A4 */	li r5, 0xa4
/* 804C882C  91 41 00 08 */	stw r10, 8(r1)
/* 804C8830  38 64 1D A8 */	addi r3, r4, 0x1da8
/* 804C8834  38 C0 00 00 */	li r6, 0
/* 804C8838  38 E0 00 00 */	li r7, 0
/* 804C883C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C8840  39 00 00 00 */	li r8, 0
/* 804C8844  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C8848  91 41 00 14 */	stw r10, 0x14(r1)
/* 804C884C  91 41 00 18 */	stw r10, 0x18(r1)
/* 804C8850  C0 29 00 00 */	lfs f1, 0(r9)
/* 804C8854  C0 49 00 04 */	lfs f2, 4(r9)
/* 804C8858  C0 69 00 08 */	lfs f3, 8(r9)
/* 804C885C  89 24 00 E4 */	lbz r9, 0xe4(r4)
/* 804C8860  89 44 00 E5 */	lbz r10, 0xe5(r4)
/* 804C8864  4B EA CE E5 */	bl Actor_info_make_actor
/* 804C8868  7C 7D 1B 79 */	or. r29, r3, r3
/* 804C886C  41 82 00 54 */	beq lbl_804C88C0
/* 804C8870  7F 63 DB 78 */	mr r3, r27
/* 804C8874  7F C4 F3 78 */	mr r4, r30
/* 804C8878  7F E5 FB 78 */	mr r5, r31
/* 804C887C  7F 86 E3 78 */	mr r6, r28
/* 804C8880  7F A7 EB 78 */	mr r7, r29
/* 804C8884  4B FF FC 35 */	bl drop_fruit
/* 804C8888  3C 60 80 64 */	lis r3, lit_664@ha /* 0x806461E4@ha */
/* 804C888C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 804C8890  C0 23 61 E4 */	lfs f1, lit_664@l(r3)  /* 0x806461E4@l */
/* 804C8894  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C8898  40 82 00 44 */	bne lbl_804C88DC
/* 804C889C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 804C88A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C88A4  40 82 00 38 */	bne lbl_804C88DC
/* 804C88A8  C0 1C 00 08 */	lfs f0, 8(r28)
/* 804C88AC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C88B0  40 82 00 2C */	bne lbl_804C88DC
/* 804C88B4  7F A3 EB 78 */	mr r3, r29
/* 804C88B8  4B EA BB 89 */	bl Actor_delete
/* 804C88BC  48 00 00 20 */	b lbl_804C88DC
lbl_804C88C0:
/* 804C88C0  3C 80 80 6A */	lis r4, wait_pos@ha /* 0x8069BA74@ha */
/* 804C88C4  7F 83 E3 78 */	mr r3, r28
/* 804C88C8  38 84 BA 74 */	addi r4, r4, wait_pos@l /* 0x8069BA74@l */
/* 804C88CC  4B EF 25 F1 */	bl xyz_t_move
/* 804C88D0  48 00 00 0C */	b lbl_804C88DC
lbl_804C88D4:
/* 804C88D4  38 E0 00 00 */	li r7, 0
/* 804C88D8  4B FF FB E1 */	bl drop_fruit
lbl_804C88DC:
/* 804C88DC  39 61 00 40 */	addi r11, r1, 0x40
/* 804C88E0  4B BD 26 39 */	bl func_8009AF18
/* 804C88E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C88E8  7C 08 03 A6 */	mtlr r0
/* 804C88EC  38 21 00 40 */	addi r1, r1, 0x40
/* 804C88F0  4E 80 00 20 */	blr 
