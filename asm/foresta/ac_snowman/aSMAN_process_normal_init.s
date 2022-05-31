lbl_804A5834:
/* 804A5834  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80645C9C@ha */
/* 804A5838  38 00 00 00 */	li r0, 0
/* 804A583C  38 A4 5C 9C */	addi r5, r4, lit_472@l /* 0x80645C9C@l */
/* 804A5840  3C 80 80 4A */	lis r4, aSMAN_process_normal@ha /* 0x804A585C@ha */
/* 804A5844  B0 03 01 FA */	sth r0, 0x1fa(r3)
/* 804A5848  38 04 58 5C */	addi r0, r4, aSMAN_process_normal@l /* 0x804A585C@l */
/* 804A584C  C0 05 00 00 */	lfs f0, 0(r5)
/* 804A5850  D0 03 01 C8 */	stfs f0, 0x1c8(r3)
/* 804A5854  90 03 01 90 */	stw r0, 0x190(r3)
/* 804A5858  4E 80 00 20 */	blr 
