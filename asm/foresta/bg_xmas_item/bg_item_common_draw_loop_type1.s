lbl_804CC8B0:
/* 804CC8B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CC8B4  7C 08 02 A6 */	mflr r0
/* 804CC8B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CC8BC  39 61 00 20 */	addi r11, r1, 0x20
/* 804CC8C0  4B BC E6 09 */	bl func_8009AEC8
/* 804CC8C4  7C 9C 23 78 */	mr r28, r4
/* 804CC8C8  8B E5 00 05 */	lbz r31, 5(r5)
/* 804CC8CC  80 84 00 00 */	lwz r4, 0(r4)
/* 804CC8D0  3C 00 DE 00 */	lis r0, 0xde00
/* 804CC8D4  7C FE 3B 78 */	mr r30, r7
/* 804CC8D8  7C 7B 1B 78 */	mr r27, r3
/* 804CC8DC  38 64 00 08 */	addi r3, r4, 8
/* 804CC8E0  7C DD 33 78 */	mr r29, r6
/* 804CC8E4  90 7C 00 00 */	stw r3, 0(r28)
/* 804CC8E8  90 04 00 00 */	stw r0, 0(r4)
/* 804CC8EC  88 05 00 04 */	lbz r0, 4(r5)
/* 804CC8F0  54 00 10 3A */	slwi r0, r0, 2
/* 804CC8F4  7C 1E 00 2E */	lwzx r0, r30, r0
/* 804CC8F8  90 04 00 04 */	stw r0, 4(r4)
/* 804CC8FC  48 00 00 74 */	b lbl_804CC970
lbl_804CC900:
/* 804CC900  88 1D 00 46 */	lbz r0, 0x46(r29)
/* 804CC904  28 00 00 00 */	cmplwi r0, 0
/* 804CC908  40 82 00 5C */	bne lbl_804CC964
/* 804CC90C  7F A3 EB 78 */	mr r3, r29
/* 804CC910  4B F3 F9 49 */	bl Matrix_put
/* 804CC914  83 5C 00 00 */	lwz r26, 0(r28)
/* 804CC918  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804CC91C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804CC920  7F 63 DB 78 */	mr r3, r27
/* 804CC924  38 9A 00 08 */	addi r4, r26, 8
/* 804CC928  90 9C 00 00 */	stw r4, 0(r28)
/* 804CC92C  90 1A 00 00 */	stw r0, 0(r26)
/* 804CC930  4B F4 0A A5 */	bl _Matrix_to_Mtx_new
/* 804CC934  90 7A 00 04 */	stw r3, 4(r26)
/* 804CC938  3C 00 DE 00 */	lis r0, 0xde00
/* 804CC93C  80 9C 00 00 */	lwz r4, 0(r28)
/* 804CC940  38 64 00 08 */	addi r3, r4, 8
/* 804CC944  90 7C 00 00 */	stw r3, 0(r28)
/* 804CC948  90 04 00 00 */	stw r0, 0(r4)
/* 804CC94C  88 1D 00 47 */	lbz r0, 0x47(r29)
/* 804CC950  7C 00 07 74 */	extsb r0, r0
/* 804CC954  7C 1F 02 14 */	add r0, r31, r0
/* 804CC958  54 00 10 3A */	slwi r0, r0, 2
/* 804CC95C  7C 1E 00 2E */	lwzx r0, r30, r0
/* 804CC960  90 04 00 04 */	stw r0, 4(r4)
lbl_804CC964:
/* 804CC964  A8 1D 00 44 */	lha r0, 0x44(r29)
/* 804CC968  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804CC96C  7F BD 02 14 */	add r29, r29, r0
lbl_804CC970:
/* 804CC970  A8 1D 00 44 */	lha r0, 0x44(r29)
/* 804CC974  2C 00 01 00 */	cmpwi r0, 0x100
/* 804CC978  40 82 FF 88 */	bne lbl_804CC900
/* 804CC97C  39 61 00 20 */	addi r11, r1, 0x20
/* 804CC980  4B BC E5 95 */	bl func_8009AF14
/* 804CC984  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CC988  7C 08 03 A6 */	mtlr r0
/* 804CC98C  38 21 00 20 */	addi r1, r1, 0x20
/* 804CC990  4E 80 00 20 */	blr 
