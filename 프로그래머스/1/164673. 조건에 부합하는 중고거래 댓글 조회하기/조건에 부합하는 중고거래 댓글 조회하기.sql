select board.TITLE, board.BOARD_ID, reply.REPLY_ID, reply.WRITER_ID, reply.CONTENTS, DATE_FORMAT(reply.CREATED_DATE, '%Y-%m-%d') from USED_GOODS_BOARD as board
    join USED_GOODS_REPLY as reply
    on board.BOARD_ID = reply.BOARD_ID
WHERE  board.CREATED_DATE LIKE '2022-10%'
ORDER BY reply.CREATED_DATE ASC, board.TITLE ASC;