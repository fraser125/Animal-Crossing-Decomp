lbl_804BB3E4:
/* 804BB3E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BB3E8  7C 08 02 A6 */	mflr r0
/* 804BB3EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BB3F0  39 61 00 20 */	addi r11, r1, 0x20
/* 804BB3F4  4B BD FA DD */	bl func_8009AED0
/* 804BB3F8  7C 9E 23 78 */	mr r30, r4
/* 804BB3FC  88 85 00 44 */	lbz r4, 0x44(r5)
/* 804BB400  89 06 00 05 */	lbz r8, 5(r6)
/* 804BB404  7C 7D 1B 78 */	mr r29, r3
/* 804BB408  7C 83 07 74 */	extsb r3, r4
/* 804BB40C  80 9E 00 00 */	lwz r4, 0(r30)
/* 804BB410  7C 68 1A 14 */	add r3, r8, r3
/* 804BB414  3C 00 DE 00 */	lis r0, 0xde00
/* 804BB418  54 68 10 3A */	slwi r8, r3, 2
/* 804BB41C  7F E7 40 2E */	lwzx r31, r7, r8
/* 804BB420  38 64 00 08 */	addi r3, r4, 8
/* 804BB424  90 7E 00 00 */	stw r3, 0(r30)
/* 804BB428  90 04 00 00 */	stw r0, 0(r4)
/* 804BB42C  88 06 00 04 */	lbz r0, 4(r6)
/* 804BB430  54 00 10 3A */	slwi r0, r0, 2
/* 804BB434  7C 07 00 2E */	lwzx r0, r7, r0
/* 804BB438  90 04 00 04 */	stw r0, 4(r4)
/* 804BB43C  88 05 00 42 */	lbz r0, 0x42(r5)
/* 804BB440  28 00 00 FF */	cmplwi r0, 0xff
/* 804BB444  40 82 00 4C */	bne lbl_804BB490
/* 804BB448  80 FE 00 00 */	lwz r7, 0(r30)
/* 804BB44C  3C C0 E2 00 */	lis r6, 0xE200 /* 0xE200001C@ha */
/* 804BB450  3C 80 C8 11 */	lis r4, 0xC811 /* 0xC8113078@ha */
/* 804BB454  3C 60 FC 12 */	lis r3, 0xFC12 /* 0xFC127E60@ha */
/* 804BB458  38 07 00 08 */	addi r0, r7, 8
/* 804BB45C  38 C6 00 1C */	addi r6, r6, 0x001C /* 0xE200001C@l */
/* 804BB460  90 1E 00 00 */	stw r0, 0(r30)
/* 804BB464  38 84 30 78 */	addi r4, r4, 0x3078 /* 0xC8113078@l */
/* 804BB468  38 63 7E 60 */	addi r3, r3, 0x7E60 /* 0xFC127E60@l */
/* 804BB46C  38 00 F3 F8 */	li r0, -3080
/* 804BB470  90 C7 00 00 */	stw r6, 0(r7)
/* 804BB474  90 87 00 04 */	stw r4, 4(r7)
/* 804BB478  80 DE 00 00 */	lwz r6, 0(r30)
/* 804BB47C  38 86 00 08 */	addi r4, r6, 8
/* 804BB480  90 9E 00 00 */	stw r4, 0(r30)
/* 804BB484  90 66 00 00 */	stw r3, 0(r6)
/* 804BB488  90 06 00 04 */	stw r0, 4(r6)
/* 804BB48C  48 00 00 6C */	b lbl_804BB4F8
lbl_804BB490:
/* 804BB490  81 1E 00 00 */	lwz r8, 0(r30)
/* 804BB494  3C C0 E2 00 */	lis r6, 0xE200 /* 0xE200001C@ha */
/* 804BB498  3C 80 C8 10 */	lis r4, 0xC810 /* 0xC81049D8@ha */
/* 804BB49C  3C 60 FC 12 */	lis r3, 0xFC12 /* 0xFC121A60@ha */
/* 804BB4A0  38 E8 00 08 */	addi r7, r8, 8
/* 804BB4A4  38 06 00 1C */	addi r0, r6, 0x001C /* 0xE200001C@l */
/* 804BB4A8  90 FE 00 00 */	stw r7, 0(r30)
/* 804BB4AC  38 C4 49 D8 */	addi r6, r4, 0x49D8 /* 0xC81049D8@l */
/* 804BB4B0  38 83 1A 60 */	addi r4, r3, 0x1A60 /* 0xFC121A60@l */
/* 804BB4B4  38 60 FF F8 */	li r3, -8
/* 804BB4B8  90 08 00 00 */	stw r0, 0(r8)
/* 804BB4BC  3C 00 FB 00 */	lis r0, 0xfb00
/* 804BB4C0  90 C8 00 04 */	stw r6, 4(r8)
/* 804BB4C4  80 FE 00 00 */	lwz r7, 0(r30)
/* 804BB4C8  38 C7 00 08 */	addi r6, r7, 8
/* 804BB4CC  90 DE 00 00 */	stw r6, 0(r30)
/* 804BB4D0  90 87 00 00 */	stw r4, 0(r7)
/* 804BB4D4  90 67 00 04 */	stw r3, 4(r7)
/* 804BB4D8  80 9E 00 00 */	lwz r4, 0(r30)
/* 804BB4DC  38 64 00 08 */	addi r3, r4, 8
/* 804BB4E0  90 7E 00 00 */	stw r3, 0(r30)
/* 804BB4E4  90 04 00 00 */	stw r0, 0(r4)
/* 804BB4E8  88 05 00 42 */	lbz r0, 0x42(r5)
/* 804BB4EC  64 00 FF FF */	oris r0, r0, 0xffff
/* 804BB4F0  60 00 FF 00 */	ori r0, r0, 0xff00
/* 804BB4F4  90 04 00 04 */	stw r0, 4(r4)
lbl_804BB4F8:
/* 804BB4F8  7C A3 2B 78 */	mr r3, r5
/* 804BB4FC  4B F5 0D 5D */	bl Matrix_put
/* 804BB500  83 9E 00 00 */	lwz r28, 0(r30)
/* 804BB504  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804BB508  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804BB50C  7F A3 EB 78 */	mr r3, r29
/* 804BB510  38 9C 00 08 */	addi r4, r28, 8
/* 804BB514  90 9E 00 00 */	stw r4, 0(r30)
/* 804BB518  90 1C 00 00 */	stw r0, 0(r28)
/* 804BB51C  4B F5 1E B9 */	bl _Matrix_to_Mtx_new
/* 804BB520  90 7C 00 04 */	stw r3, 4(r28)
/* 804BB524  3C 00 DE 00 */	lis r0, 0xde00
/* 804BB528  80 9E 00 00 */	lwz r4, 0(r30)
/* 804BB52C  38 64 00 08 */	addi r3, r4, 8
/* 804BB530  90 7E 00 00 */	stw r3, 0(r30)
/* 804BB534  90 04 00 00 */	stw r0, 0(r4)
/* 804BB538  93 E4 00 04 */	stw r31, 4(r4)
/* 804BB53C  39 61 00 20 */	addi r11, r1, 0x20
/* 804BB540  4B BD F9 DD */	bl func_8009AF1C
/* 804BB544  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BB548  7C 08 03 A6 */	mtlr r0
/* 804BB54C  38 21 00 20 */	addi r1, r1, 0x20
/* 804BB550  4E 80 00 20 */	blr 
