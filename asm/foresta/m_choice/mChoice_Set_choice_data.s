lbl_80383764:
/* 80383764  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80383768  7C 08 02 A6 */	mflr r0
/* 8038376C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80383770  39 61 00 40 */	addi r11, r1, 0x40
/* 80383774  4B D1 77 39 */	bl func_8009AEAC
/* 80383778  83 61 00 48 */	lwz r27, 0x48(r1)
/* 8038377C  7C 73 1B 78 */	mr r19, r3
/* 80383780  83 81 00 4C */	lwz r28, 0x4c(r1)
/* 80383784  7C 94 23 78 */	mr r20, r4
/* 80383788  83 A1 00 50 */	lwz r29, 0x50(r1)
/* 8038378C  7C B5 2B 78 */	mr r21, r5
/* 80383790  83 C1 00 54 */	lwz r30, 0x54(r1)
/* 80383794  7C D6 33 78 */	mr r22, r6
/* 80383798  83 E1 00 58 */	lwz r31, 0x58(r1)
/* 8038379C  7C F7 3B 78 */	mr r23, r7
/* 803837A0  7D 18 43 78 */	mr r24, r8
/* 803837A4  7D 39 4B 78 */	mr r25, r9
/* 803837A8  7D 5A 53 78 */	mr r26, r10
/* 803837AC  4B FF FE FD */	bl mChoice_Init_choice_data
/* 803837B0  28 14 00 00 */	cmplwi r20, 0
/* 803837B4  41 82 00 24 */	beq lbl_803837D8
/* 803837B8  2C 15 00 00 */	cmpwi r21, 0
/* 803837BC  40 81 00 1C */	ble lbl_803837D8
/* 803837C0  2C 15 00 10 */	cmpwi r21, 0x10
/* 803837C4  41 81 00 14 */	bgt lbl_803837D8
/* 803837C8  7E 63 9B 78 */	mr r3, r19
/* 803837CC  7E 84 A3 78 */	mr r4, r20
/* 803837D0  7E A5 AB 78 */	mr r5, r21
/* 803837D4  4B FF FE E1 */	bl mChoice_Add_choice_data
lbl_803837D8:
/* 803837D8  28 16 00 00 */	cmplwi r22, 0
/* 803837DC  41 82 00 24 */	beq lbl_80383800
/* 803837E0  2C 17 00 00 */	cmpwi r23, 0
/* 803837E4  40 81 00 1C */	ble lbl_80383800
/* 803837E8  2C 17 00 10 */	cmpwi r23, 0x10
/* 803837EC  41 81 00 14 */	bgt lbl_80383800
/* 803837F0  7E 63 9B 78 */	mr r3, r19
/* 803837F4  7E C4 B3 78 */	mr r4, r22
/* 803837F8  7E E5 BB 78 */	mr r5, r23
/* 803837FC  4B FF FE B9 */	bl mChoice_Add_choice_data
lbl_80383800:
/* 80383800  28 18 00 00 */	cmplwi r24, 0
/* 80383804  41 82 00 24 */	beq lbl_80383828
/* 80383808  2C 19 00 00 */	cmpwi r25, 0
/* 8038380C  40 81 00 1C */	ble lbl_80383828
/* 80383810  2C 19 00 10 */	cmpwi r25, 0x10
/* 80383814  41 81 00 14 */	bgt lbl_80383828
/* 80383818  7E 63 9B 78 */	mr r3, r19
/* 8038381C  7F 04 C3 78 */	mr r4, r24
/* 80383820  7F 25 CB 78 */	mr r5, r25
/* 80383824  4B FF FE 91 */	bl mChoice_Add_choice_data
lbl_80383828:
/* 80383828  28 1A 00 00 */	cmplwi r26, 0
/* 8038382C  41 82 00 24 */	beq lbl_80383850
/* 80383830  2C 1B 00 00 */	cmpwi r27, 0
/* 80383834  40 81 00 1C */	ble lbl_80383850
/* 80383838  2C 1B 00 10 */	cmpwi r27, 0x10
/* 8038383C  41 81 00 14 */	bgt lbl_80383850
/* 80383840  7E 63 9B 78 */	mr r3, r19
/* 80383844  7F 44 D3 78 */	mr r4, r26
/* 80383848  7F 65 DB 78 */	mr r5, r27
/* 8038384C  4B FF FE 69 */	bl mChoice_Add_choice_data
lbl_80383850:
/* 80383850  28 1C 00 00 */	cmplwi r28, 0
/* 80383854  41 82 00 24 */	beq lbl_80383878
/* 80383858  2C 1D 00 00 */	cmpwi r29, 0
/* 8038385C  40 81 00 1C */	ble lbl_80383878
/* 80383860  2C 1D 00 10 */	cmpwi r29, 0x10
/* 80383864  41 81 00 14 */	bgt lbl_80383878
/* 80383868  7E 63 9B 78 */	mr r3, r19
/* 8038386C  7F 84 E3 78 */	mr r4, r28
/* 80383870  7F A5 EB 78 */	mr r5, r29
/* 80383874  4B FF FE 41 */	bl mChoice_Add_choice_data
lbl_80383878:
/* 80383878  28 1E 00 00 */	cmplwi r30, 0
/* 8038387C  41 82 00 24 */	beq lbl_803838A0
/* 80383880  2C 1F 00 00 */	cmpwi r31, 0
/* 80383884  40 81 00 1C */	ble lbl_803838A0
/* 80383888  2C 1F 00 10 */	cmpwi r31, 0x10
/* 8038388C  41 81 00 14 */	bgt lbl_803838A0
/* 80383890  7E 63 9B 78 */	mr r3, r19
/* 80383894  7F C4 F3 78 */	mr r4, r30
/* 80383898  7F E5 FB 78 */	mr r5, r31
/* 8038389C  4B FF FE 19 */	bl mChoice_Add_choice_data
lbl_803838A0:
/* 803838A0  39 61 00 40 */	addi r11, r1, 0x40
/* 803838A4  4B D1 76 55 */	bl func_8009AEF8
/* 803838A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803838AC  7C 08 03 A6 */	mtlr r0
/* 803838B0  38 21 00 40 */	addi r1, r1, 0x40
/* 803838B4  4E 80 00 20 */	blr 