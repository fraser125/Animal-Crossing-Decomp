lbl_804B661C:
/* 804B661C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B6620  7C 08 02 A6 */	mflr r0
/* 804B6624  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B6628  39 61 00 20 */	addi r11, r1, 0x20
/* 804B662C  4B BE 48 9D */	bl func_8009AEC8
/* 804B6630  7C 9C 23 78 */	mr r28, r4
/* 804B6634  8B E5 00 05 */	lbz r31, 5(r5)
/* 804B6638  80 84 00 00 */	lwz r4, 0(r4)
/* 804B663C  3C 00 DE 00 */	lis r0, 0xde00
/* 804B6640  7C FE 3B 78 */	mr r30, r7
/* 804B6644  7C 7B 1B 78 */	mr r27, r3
/* 804B6648  38 64 00 08 */	addi r3, r4, 8
/* 804B664C  7C DD 33 78 */	mr r29, r6
/* 804B6650  90 7C 00 00 */	stw r3, 0(r28)
/* 804B6654  90 04 00 00 */	stw r0, 0(r4)
/* 804B6658  88 05 00 04 */	lbz r0, 4(r5)
/* 804B665C  54 00 10 3A */	slwi r0, r0, 2
/* 804B6660  7C 1E 00 2E */	lwzx r0, r30, r0
/* 804B6664  90 04 00 04 */	stw r0, 4(r4)
/* 804B6668  48 00 00 74 */	b lbl_804B66DC
lbl_804B666C:
/* 804B666C  88 1D 00 46 */	lbz r0, 0x46(r29)
/* 804B6670  28 00 00 00 */	cmplwi r0, 0
/* 804B6674  40 82 00 5C */	bne lbl_804B66D0
/* 804B6678  7F A3 EB 78 */	mr r3, r29
/* 804B667C  4B F5 5B DD */	bl Matrix_put
/* 804B6680  83 5C 00 00 */	lwz r26, 0(r28)
/* 804B6684  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804B6688  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804B668C  7F 63 DB 78 */	mr r3, r27
/* 804B6690  38 9A 00 08 */	addi r4, r26, 8
/* 804B6694  90 9C 00 00 */	stw r4, 0(r28)
/* 804B6698  90 1A 00 00 */	stw r0, 0(r26)
/* 804B669C  4B F5 6D 39 */	bl _Matrix_to_Mtx_new
/* 804B66A0  90 7A 00 04 */	stw r3, 4(r26)
/* 804B66A4  3C 00 DE 00 */	lis r0, 0xde00
/* 804B66A8  80 9C 00 00 */	lwz r4, 0(r28)
/* 804B66AC  38 64 00 08 */	addi r3, r4, 8
/* 804B66B0  90 7C 00 00 */	stw r3, 0(r28)
/* 804B66B4  90 04 00 00 */	stw r0, 0(r4)
/* 804B66B8  88 1D 00 47 */	lbz r0, 0x47(r29)
/* 804B66BC  7C 00 07 74 */	extsb r0, r0
/* 804B66C0  7C 1F 02 14 */	add r0, r31, r0
/* 804B66C4  54 00 10 3A */	slwi r0, r0, 2
/* 804B66C8  7C 1E 00 2E */	lwzx r0, r30, r0
/* 804B66CC  90 04 00 04 */	stw r0, 4(r4)
lbl_804B66D0:
/* 804B66D0  A8 1D 00 44 */	lha r0, 0x44(r29)
/* 804B66D4  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804B66D8  7F BD 02 14 */	add r29, r29, r0
lbl_804B66DC:
/* 804B66DC  A8 1D 00 44 */	lha r0, 0x44(r29)
/* 804B66E0  2C 00 01 00 */	cmpwi r0, 0x100
/* 804B66E4  40 82 FF 88 */	bne lbl_804B666C
/* 804B66E8  39 61 00 20 */	addi r11, r1, 0x20
/* 804B66EC  4B BE 48 29 */	bl func_8009AF14
/* 804B66F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B66F4  7C 08 03 A6 */	mtlr r0
/* 804B66F8  38 21 00 20 */	addi r1, r1, 0x20
/* 804B66FC  4E 80 00 20 */	blr 
