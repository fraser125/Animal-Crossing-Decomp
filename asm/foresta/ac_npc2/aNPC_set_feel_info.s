lbl_8053EC38:
/* 8053EC38  80 C3 01 7C */	lwz r6, 0x17c(r3)
/* 8053EC3C  28 06 00 00 */	cmplwi r6, 0
/* 8053EC40  4D 82 00 20 */	beqlr 
/* 8053EC44  88 06 08 E2 */	lbz r0, 0x8e2(r6)
/* 8053EC48  80 E3 08 38 */	lwz r7, 0x838(r3)
/* 8053EC4C  7C 04 00 00 */	cmpw r4, r0
/* 8053EC50  41 82 00 20 */	beq lbl_8053EC70
/* 8053EC54  2C 04 00 00 */	cmpwi r4, 0
/* 8053EC58  98 86 08 E2 */	stb r4, 0x8e2(r6)
/* 8053EC5C  40 82 00 0C */	bne lbl_8053EC68
/* 8053EC60  38 E0 00 00 */	li r7, 0
/* 8053EC64  48 00 00 28 */	b lbl_8053EC8C
lbl_8053EC68:
/* 8053EC68  1C E5 0E 10 */	mulli r7, r5, 0xe10
/* 8053EC6C  48 00 00 20 */	b lbl_8053EC8C
lbl_8053EC70:
/* 8053EC70  1C A5 0E 10 */	mulli r5, r5, 0xe10
/* 8053EC74  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008CA0@ha */
/* 8053EC78  38 04 8C A0 */	addi r0, r4, 0x8CA0 /* 0x00008CA0@l */
/* 8053EC7C  7C E7 2A 14 */	add r7, r7, r5
/* 8053EC80  7C 07 00 00 */	cmpw r7, r0
/* 8053EC84  40 81 00 08 */	ble lbl_8053EC8C
/* 8053EC88  7C 07 03 78 */	mr r7, r0
lbl_8053EC8C:
/* 8053EC8C  90 E3 08 38 */	stw r7, 0x838(r3)
/* 8053EC90  4E 80 00 20 */	blr 
