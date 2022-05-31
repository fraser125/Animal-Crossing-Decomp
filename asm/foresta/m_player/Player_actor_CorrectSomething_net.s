lbl_804E1220:
/* 804E1220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1224  7C 08 02 A6 */	mflr r0
/* 804E1228  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E122C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E1230  93 C1 00 08 */	stw r30, 8(r1)
/* 804E1234  7C 9E 23 78 */	mr r30, r4
/* 804E1238  83 E3 0E 70 */	lwz r31, 0xe70(r3)
/* 804E123C  28 1F 00 00 */	cmplwi r31, 0
/* 804E1240  41 82 00 3C */	beq lbl_804E127C
/* 804E1244  88 03 0E 74 */	lbz r0, 0xe74(r3)
/* 804E1248  7C 00 07 75 */	extsb. r0, r0
/* 804E124C  40 82 00 30 */	bne lbl_804E127C
/* 804E1250  4B F2 AF 85 */	bl Matrix_push
/* 804E1254  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804E1258  38 60 00 00 */	li r3, 0
/* 804E125C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 804E1260  C0 7E 00 08 */	lfs f3, 8(r30)
/* 804E1264  4B F2 B0 9D */	bl Matrix_translate
/* 804E1268  38 7F 01 78 */	addi r3, r31, 0x178
/* 804E126C  4B F2 AF C1 */	bl Matrix_get
/* 804E1270  4B F2 AF A5 */	bl Matrix_pull
/* 804E1274  38 00 00 01 */	li r0, 1
/* 804E1278  90 1F 01 B8 */	stw r0, 0x1b8(r31)
lbl_804E127C:
/* 804E127C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1280  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E1284  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E1288  7C 08 03 A6 */	mtlr r0
/* 804E128C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1290  4E 80 00 20 */	blr 
