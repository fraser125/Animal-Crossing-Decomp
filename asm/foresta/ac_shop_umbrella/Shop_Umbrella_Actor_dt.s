lbl_804A0E24:
/* 804A0E24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A0E28  7C 08 02 A6 */	mflr r0
/* 804A0E2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A0E30  39 61 00 20 */	addi r11, r1, 0x20
/* 804A0E34  4B BF A0 99 */	bl func_8009AECC
/* 804A0E38  7C 7B 1B 78 */	mr r27, r3
/* 804A0E3C  3B 80 00 00 */	li r28, 0
/* 804A0E40  83 C3 01 74 */	lwz r30, 0x174(r3)
/* 804A0E44  3B E0 00 00 */	li r31, 0
/* 804A0E48  83 A3 01 78 */	lwz r29, 0x178(r3)
/* 804A0E4C  48 00 00 18 */	b lbl_804A0E64
lbl_804A0E50:
/* 804A0E50  38 1F 00 48 */	addi r0, r31, 0x48
/* 804A0E54  7C 7D 00 2E */	lwzx r3, r29, r0
/* 804A0E58  4B EE C0 9D */	bl mCoBG_CrossOffMoveBg
/* 804A0E5C  3B 9C 00 01 */	addi r28, r28, 1
/* 804A0E60  3B FF 00 58 */	addi r31, r31, 0x58
lbl_804A0E64:
/* 804A0E64  7C 1C F0 00 */	cmpw r28, r30
/* 804A0E68  41 80 FF E8 */	blt lbl_804A0E50
/* 804A0E6C  80 7B 01 78 */	lwz r3, 0x178(r27)
/* 804A0E70  28 03 00 00 */	cmplwi r3, 0
/* 804A0E74  41 82 00 08 */	beq lbl_804A0E7C
/* 804A0E78  4B F1 B6 3D */	bl zelda_free
lbl_804A0E7C:
/* 804A0E7C  7F 63 DB 78 */	mr r3, r27
/* 804A0E80  38 80 00 00 */	li r4, 0
/* 804A0E84  4B FF FE E9 */	bl aShopUmbrella_SetClipProc
/* 804A0E88  39 61 00 20 */	addi r11, r1, 0x20
/* 804A0E8C  4B BF A0 8D */	bl func_8009AF18
/* 804A0E90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A0E94  7C 08 03 A6 */	mtlr r0
/* 804A0E98  38 21 00 20 */	addi r1, r1, 0x20
/* 804A0E9C  4E 80 00 20 */	blr 
