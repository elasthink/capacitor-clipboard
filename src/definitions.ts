/**
 * Interfaz del plugin.
 * @interface
 */
export interface ClipboardPlugin {

  /**
   * Lee el contenido del portapapeles como texto.
   * @return {text: string} Texto obtenido o nulo.
   */
  read(): Promise<ReadResult>;

  /**
   * Lee del portapapeles una URL.
   * @return {url: string} URL o valor nulo si el portapapeles está vacío o no tiene formato de URL.
   */
  readURL(): Promise<ReadResult>;

  /**
   * Copia al portapapeles el texto especificado.
   * @param {string} text Texto especificado.
   */
  write(options: WriteOptions): Promise<void>;

  /**
   * Copia al portapapeles la URL especificada.
   * @param {string} url URL especificada.
   */
  writeURL(options: WriteOptions): Promise<void>;

  /**
   * Limpia el contenido del portapapeles.
   */
  clear(): Promise<void>;
}

/**
 * Parámetros del método write/writeURL.
 * @interface
 */
export interface WriteOptions {
  text?: string;
  url?: string;
}

/**
 * Parámetros de respuesta del método read/readURL.
 * @interface
 */
export interface ReadResult {
  text?: string;
  url?: string;
}
