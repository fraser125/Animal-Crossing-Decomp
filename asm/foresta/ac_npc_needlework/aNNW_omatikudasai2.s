lbl_8056585C:
/* 8056585C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80565860  7C 08 02 A6 */	mflr r0
/* 80565864  90 01 00 14 */	stw r0, 0x14(r1)
/* 80565868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056586C  93 C1 00 08 */	stw r30, 8(r1)
/* 80565870  7C 7E 1B 78 */	mr r30, r3
/* 80565874  88 03 09 B7 */	lbz r0, 0x9b7(r3)
/* 80565878  28 00 00 00 */	cmplwi r0, 0
/* 8056587C  41 82 00 0C */	beq lbl_80565888
/* 80565880  4B FF FF A5 */	bl aNNW_my_proc_main
/* 80565884  48 00 00 5C */	b lbl_805658E0
lbl_80565888:
/* 80565888  88 1E 09 B5 */	lbz r0, 0x9b5(r30)
/* 8056588C  28 00 00 04 */	cmplwi r0, 4
/* 80565890  40 80 00 14 */	bge lbl_805658A4
/* 80565894  38 A0 00 0B */	li r5, 0xb
/* 80565898  48 00 07 55 */	bl aNNW_setup_think_proc
/* 8056589C  3B E0 00 00 */	li r31, 0
/* 805658A0  48 00 00 10 */	b lbl_805658B0
lbl_805658A4:
/* 805658A4  38 A0 00 0C */	li r5, 0xc
/* 805658A8  48 00 07 45 */	bl aNNW_setup_think_proc
/* 805658AC  3B E0 00 01 */	li r31, 1
lbl_805658B0:
/* 805658B0  4B E5 9D F9 */	bl func_803BF6A8
/* 805658B4  88 BE 09 B5 */	lbz r5, 0x9b5(r30)
/* 805658B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805658BC  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 805658C0  7F E4 FB 78 */	mr r4, r31
/* 805658C4  54 A5 07 7E */	clrlwi r5, r5, 0x1d
/* 805658C8  38 C0 00 10 */	li r6, 0x10
/* 805658CC  1C A5 02 20 */	mulli r5, r5, 0x220
/* 805658D0  7C A0 2A 14 */	add r5, r0, r5
/* 805658D4  3C A5 00 02 */	addis r5, r5, 2
/* 805658D8  38 A5 14 00 */	addi r5, r5, 0x1400
/* 805658DC  4B E5 A4 F9 */	bl mMsg_Set_item_str
lbl_805658E0:
/* 805658E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805658E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805658E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805658EC  7C 08 03 A6 */	mtlr r0
/* 805658F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805658F4  4E 80 00 20 */	blr 
