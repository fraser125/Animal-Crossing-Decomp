lbl_8042E338:
/* 8042E338  2C 05 00 03 */	cmpwi r5, 3
/* 8042E33C  40 82 00 0C */	bne lbl_8042E348
/* 8042E340  38 00 00 00 */	li r0, 0
/* 8042E344  90 06 00 00 */	stw r0, 0(r6)
lbl_8042E348:
/* 8042E348  38 60 00 01 */	li r3, 1
/* 8042E34C  4E 80 00 20 */	blr 
