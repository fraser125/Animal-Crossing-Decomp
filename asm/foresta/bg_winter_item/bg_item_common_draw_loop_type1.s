lbl_804C5498:
/* 804C5498  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C549C  7C 08 02 A6 */	mflr r0
/* 804C54A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C54A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804C54A8  4B BD 5A 21 */	bl func_8009AEC8
/* 804C54AC  7C 9C 23 78 */	mr r28, r4
/* 804C54B0  8B E5 00 05 */	lbz r31, 5(r5)
/* 804C54B4  80 84 00 00 */	lwz r4, 0(r4)
/* 804C54B8  3C 00 DE 00 */	lis r0, 0xde00
/* 804C54BC  7C FE 3B 78 */	mr r30, r7
/* 804C54C0  7C 7B 1B 78 */	mr r27, r3
/* 804C54C4  38 64 00 08 */	addi r3, r4, 8
/* 804C54C8  7C DD 33 78 */	mr r29, r6
/* 804C54CC  90 7C 00 00 */	stw r3, 0(r28)
/* 804C54D0  90 04 00 00 */	stw r0, 0(r4)
/* 804C54D4  88 05 00 04 */	lbz r0, 4(r5)
/* 804C54D8  54 00 10 3A */	slwi r0, r0, 2
/* 804C54DC  7C 1E 00 2E */	lwzx r0, r30, r0
/* 804C54E0  90 04 00 04 */	stw r0, 4(r4)
/* 804C54E4  48 00 00 74 */	b lbl_804C5558
lbl_804C54E8:
/* 804C54E8  88 1D 00 46 */	lbz r0, 0x46(r29)
/* 804C54EC  28 00 00 00 */	cmplwi r0, 0
/* 804C54F0  40 82 00 5C */	bne lbl_804C554C
/* 804C54F4  7F A3 EB 78 */	mr r3, r29
/* 804C54F8  4B F4 6D 61 */	bl Matrix_put
/* 804C54FC  83 5C 00 00 */	lwz r26, 0(r28)
/* 804C5500  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804C5504  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804C5508  7F 63 DB 78 */	mr r3, r27
/* 804C550C  38 9A 00 08 */	addi r4, r26, 8
/* 804C5510  90 9C 00 00 */	stw r4, 0(r28)
/* 804C5514  90 1A 00 00 */	stw r0, 0(r26)
/* 804C5518  4B F4 7E BD */	bl _Matrix_to_Mtx_new
/* 804C551C  90 7A 00 04 */	stw r3, 4(r26)
/* 804C5520  3C 00 DE 00 */	lis r0, 0xde00
/* 804C5524  80 9C 00 00 */	lwz r4, 0(r28)
/* 804C5528  38 64 00 08 */	addi r3, r4, 8
/* 804C552C  90 7C 00 00 */	stw r3, 0(r28)
/* 804C5530  90 04 00 00 */	stw r0, 0(r4)
/* 804C5534  88 1D 00 47 */	lbz r0, 0x47(r29)
/* 804C5538  7C 00 07 74 */	extsb r0, r0
/* 804C553C  7C 1F 02 14 */	add r0, r31, r0
/* 804C5540  54 00 10 3A */	slwi r0, r0, 2
/* 804C5544  7C 1E 00 2E */	lwzx r0, r30, r0
/* 804C5548  90 04 00 04 */	stw r0, 4(r4)
lbl_804C554C:
/* 804C554C  A8 1D 00 44 */	lha r0, 0x44(r29)
/* 804C5550  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804C5554  7F BD 02 14 */	add r29, r29, r0
lbl_804C5558:
/* 804C5558  A8 1D 00 44 */	lha r0, 0x44(r29)
/* 804C555C  2C 00 01 00 */	cmpwi r0, 0x100
/* 804C5560  40 82 FF 88 */	bne lbl_804C54E8
/* 804C5564  39 61 00 20 */	addi r11, r1, 0x20
/* 804C5568  4B BD 59 AD */	bl func_8009AF14
/* 804C556C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C5570  7C 08 03 A6 */	mtlr r0
/* 804C5574  38 21 00 20 */	addi r1, r1, 0x20
/* 804C5578  4E 80 00 20 */	blr 
