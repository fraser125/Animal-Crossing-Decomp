lbl_80406560:
/* 80406560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80406564  7C 08 02 A6 */	mflr r0
/* 80406568  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040656C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80406570  7C 7F 1B 78 */	mr r31, r3
/* 80406574  4B FF FF CD */	bl lbRTC_Initial
/* 80406578  3C 60 80 66 */	lis r3, l_lbRTC_isInitial@ha /* 0x8065EBD0@ha */
/* 8040657C  38 00 00 01 */	li r0, 1
/* 80406580  38 83 EB D0 */	addi r4, r3, l_lbRTC_isInitial@l /* 0x8065EBD0@l */
/* 80406584  7F E3 FB 78 */	mr r3, r31
/* 80406588  90 04 00 00 */	stw r0, 0(r4)
/* 8040658C  4B FF FF 59 */	bl lbRTC_GetGameTime
/* 80406590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80406594  38 60 00 00 */	li r3, 0
/* 80406598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040659C  7C 08 03 A6 */	mtlr r0
/* 804065A0  38 21 00 10 */	addi r1, r1, 0x10
/* 804065A4  4E 80 00 20 */	blr 
