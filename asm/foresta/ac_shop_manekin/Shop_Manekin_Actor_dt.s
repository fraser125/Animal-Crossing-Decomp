lbl_804A04E4:
/* 804A04E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A04E8  7C 08 02 A6 */	mflr r0
/* 804A04EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A04F0  39 61 00 20 */	addi r11, r1, 0x20
/* 804A04F4  4B BF A9 D9 */	bl func_8009AECC
/* 804A04F8  7C 7B 1B 78 */	mr r27, r3
/* 804A04FC  3B 80 00 00 */	li r28, 0
/* 804A0500  83 C3 01 74 */	lwz r30, 0x174(r3)
/* 804A0504  3B E0 00 00 */	li r31, 0
/* 804A0508  83 A3 01 78 */	lwz r29, 0x178(r3)
/* 804A050C  48 00 00 18 */	b lbl_804A0524
lbl_804A0510:
/* 804A0510  38 1F 00 48 */	addi r0, r31, 0x48
/* 804A0514  7C 7D 00 2E */	lwzx r3, r29, r0
/* 804A0518  4B EE C9 DD */	bl mCoBG_CrossOffMoveBg
/* 804A051C  3B 9C 00 01 */	addi r28, r28, 1
/* 804A0520  3B FF 00 54 */	addi r31, r31, 0x54
lbl_804A0524:
/* 804A0524  7C 1C F0 00 */	cmpw r28, r30
/* 804A0528  41 80 FF E8 */	blt lbl_804A0510
/* 804A052C  80 7B 01 78 */	lwz r3, 0x178(r27)
/* 804A0530  28 03 00 00 */	cmplwi r3, 0
/* 804A0534  41 82 00 08 */	beq lbl_804A053C
/* 804A0538  4B F1 BF 7D */	bl zelda_free
lbl_804A053C:
/* 804A053C  7F 63 DB 78 */	mr r3, r27
/* 804A0540  38 80 00 01 */	li r4, 1
/* 804A0544  4B FF FE B1 */	bl aSM_SetClipProc
/* 804A0548  39 61 00 20 */	addi r11, r1, 0x20
/* 804A054C  4B BF A9 CD */	bl func_8009AF18
/* 804A0550  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A0554  7C 08 03 A6 */	mtlr r0
/* 804A0558  38 21 00 20 */	addi r1, r1, 0x20
/* 804A055C  4E 80 00 20 */	blr 
